#!/system/bin/sh

# Copyright (C) 2013 Sony Mobile Communications AB.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# NOTE: This file has been modified by Sony Mobile Communications AB.
# Modifications are licensed under the License.

# Script to create symlinks depending on currently active configuration
#
# A note on context: this script is only used when multiple CDFs are used. If a
# single CDF is used, the system image is already customized.
#
# This script is part of a customization scheme where certain files on /system
# may be replaced by symlinks on /data. Depending on active customization, the
# symlinks in /data may be rewritten to point to the corresponding actual files,
# effectively replacing the contents of files without write access to /system.
#
# During composition, if multiple CDFs are used, and at least one CDF provides a
# customized version of a file <F>:
#     - that file will be replaced by (dangling) symlink to
#       /data/customization/settings/<F>
#     - the original contents of that file will be placed in
#       /system/etc/customization/settings/defaults/<F>
#     - the customized versions of that file will be placed in
#       /system/etc/customization/settings/<id>/<F>, for all relevant <id>s
#
# Conversely, if none of the CDFs provide a customized version of a file, that
# file is kept as a regular file in its original place.
#
# This script provides the other half of the implementation. Triggered during
# boot by init.rc, the script creates the missing symlinks in
# /data/customization, which will point to
# /system/etc/customization/settings/defaults or
# /system/etc/customization/settings/<id>.
#
# Summary of related files:
#     Customized versions:
#         /system/etc/customization/settings/<id_1>/...
#         /system/etc/customization/settings/<id_2>/...
#         ...
#         /system/etc/customization/settings/<id_n>/...
#         /system/etc/customization/settings/defaults/...
#
#     Original file paths:
#         /etc/gps.conf
#         ...
#
#     Directory to hold symlinks (must be on writeable media):
#         /data/customization/
#
# Example result:
# /etc/gps.conf ->
#     /data/customization/gps.conf ->
#     /system/etc/customization/settings/1234-1234/gps.conf

# List of files that may be customized.
# Remember to add a trailing whitespace when adding new entries.
customized_files=""
customized_files+="clatd.conf "
customized_files+="extra-bootanimation.zip "
customized_files+="gps.conf "
customized_files+="shutdown.mp4 "
customized_files+="wpa_supplicant.conf "

active_customization="$(/system/bin/getprop ro.semc.version.cust.active)"
src_dir="/data/customization"

id="$(/system/bin/id)"
# when inspecting ${id}, ignore trailing " ... context" part, which may or may not be present
if [ "${id:0:23}" != "uid=0(root) gid=0(root)" ]; then
    echo "error: $0 must be run as root" >&2
    exit 1
fi

umask 022
/system/bin/rm -rf "${src_dir}"
for filename in $customized_files; do
    src="${src_dir}/${filename}"
    dest_customization="/system/etc/customization/settings/${active_customization}/${filename}"
    dest_defaults="/system/etc/customization/settings/defaults/${filename}"
    if [ "${active_customization}" -a -e "${dest_customization}" ]; then
        /system/bin/mkdir -p "${src_dir}"
        /system/bin/ln -s "${dest_customization}" "${src}"
    elif [ -e "${dest_defaults}" ]; then
        /system/bin/mkdir -p "${src_dir}"
        /system/bin/ln -s "${dest_defaults}" "${src}"
    fi
done
