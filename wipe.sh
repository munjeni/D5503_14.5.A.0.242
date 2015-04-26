#!/sbin/sh

cd /data; for entry in `ls`; do [ "$entry" != "media" ] && rm -rf "$entry"; done
