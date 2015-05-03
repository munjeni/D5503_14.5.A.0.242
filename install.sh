#!/sbin/sh

cp /tmp/busybox /system/xbin/busybox
cp /tmp/busybox /system/etc/busybox

cd /system/xbin

for TT in `/system/xbin/busybox --list`; do
    /tmp/busybox ln -s busybox $TT
    /tmp/busybox chown -h 0.2000 $TT
    /tmp/busybox chcon -h u:object_r:system_file:s0 $TT
done

/tmp/busybox chown 0.2000 /system/xbin/busybox
/tmp/busybox chown 0.2000 /system/etc/busybox
/tmp/busybox chmod 04755 /system/xbin/busybox
/tmp/busybox chmod 04755 /system/etc/busybox
/tmp/busybox chcon u:object_r:system_file:s0 /system/xbin/busybox
/tmp/busybox chcon u:object_r:system_file:s0 /system/etc/busybox

/tmp/busybox chown 0.2000 /system/bin/chargemon
/tmp/busybox chown 0.2000 /system/bin/chargemon.stock
/tmp/busybox chown 0.2000 /system/bin/recovery.munjeni.gz
/tmp/busybox chmod 755 /system/bin/chargemon
/tmp/busybox chmod 755 /system/bin/chargemon.stock
/tmp/busybox chmod 644 /system/bin/recovery.munjeni.gz
/tmp/busybox chmod 644 /system/bin/recovery.twrp.gz
/tmp/busybox chcon u:object_r:system_file:s0 /system/bin/chargemon
/tmp/busybox chcon u:object_r:system_file:s0 /system/bin/chargemon.stock
/tmp/busybox chcon u:object_r:system_file:s0 /system/bin/recovery.munjeni.gz
/tmp/busybox chcon u:object_r:system_file:s0 /system/bin/recovery.twrp.gz

/tmp/busybox chmod 644 /system/lib/modules/byeselinux.ko
/tmp/busybox chcon u:object_r:system_file:s0 /system/lib/modules/byeselinux.ko

exit 0
