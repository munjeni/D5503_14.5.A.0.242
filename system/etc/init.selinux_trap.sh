#!/system/bin/sh
# Copyright (C) 2014 Sony Mobile Communications Inc.

if [ -d /sys/fs/selinux/trap ]; then
  if [ -e /system/etc/selinux_trap.rules ]; then
    # Read default Mask Rules
    while read line; do
      echo $line > /sys/fs/selinux/trap/add_exception
    done < /system/etc/selinux_trap.rules
  fi
  # Enable the Trap Module
  # XXX: Currently Disabled
  # echo "1" > /sys/fs/selinux/trap/enable
fi
