#!/sbin/sh

ch_con() {
  /tmp/busybox chcon -h u:object_r:system_file:s0 $1
  /tmp/busybox chcon u:object_r:system_file:s0 $1
}

ch_con_l() {
  /tmp/busybox chcon -h u:object_r:system_file:s0 $1
}

ch_con_ext() {
  /tmp/busybox chcon $2 $1
}

ln_con() {
  /tmp/busybox ln -s $1 $2
  UIDGID=`/tmp/busybox ls -ln $1 | /tmp/busybox awk '{print $3"."$4}'`
  /tmp/busybox chown -h $UIDGID $2
  ch_con_l $2
}

set_perm() {
  /tmp/busybox chown $1.$2 $4
  /tmp/busybox chmod $3 $4
  ch_con $4
}

cp_perm() {
  /tmp/busybox rm $5
  if [ -f "$4" ]; then
    /tmp/busybox cat $4 > $5
    set_perm $1 $2 $3 $5 $6
  fi
}

### Disabling OTA survival"
/tmp/busybox chattr -ia /system/bin/su
/tmp/busybox chattr -ia /system/xbin/su
/tmp/busybox chattr -ia /system/bin/.ext/.su
/tmp/busybox chattr -ia /system/sbin/su
/tmp/busybox chattr -ia /vendor/sbin/su
/tmp/busybox chattr -ia /vendor/bin/su
/tmp/busybox chattr -ia /vendor/xbin/su
/tmp/busybox chattr -ia /system/xbin/daemonsu
/tmp/busybox chattr -ia /system/xbin/sugote
/tmp/busybox chattr -ia /system/xbin/sugote_mksh
/tmp/busybox chattr -ia /system/xbin/supolicy
/tmp/busybox chattr -ia /system/xbin/ku.sud
/tmp/busybox chattr -ia /system/lib/libsupol.so
/tmp/busybox chattr -ia /system/lib64/libsupol.so
/tmp/busybox chattr -ia /system/etc/install-recovery.sh
/tmp/busybox chattr -ia /system/bin/install-recovery.sh

### Removing old files"

if [ -f "/system/bin/install-recovery.sh" ]; then
  if [ ! -f "/system/bin/install-recovery_original.sh" ]; then
    /tmp/busybox mv /system/bin/install-recovery.sh /system/bin/install-recovery_original.sh
    ch_con /system/bin/install-recovery_original.sh
  fi
fi
if [ -f "/system/etc/install-recovery.sh" ]; then
  if [ ! -f "/system/etc/install-recovery_original.sh" ]; then
    /tmp/busybox mv /system/etc/install-recovery.sh /system/etc/install-recovery_original.sh
    ch_con /system/etc/install-recovery_original.sh
  fi
fi

/tmp/busybox mkdir -p /system/bin/.ext

set_perm 0 0 0777 /system/bin/.ext
cp_perm 0 0 06755 /tmp/supersu/files/su /system/bin/.ext/.su
cp_perm 0 0 06755 /tmp/supersu/files/su /system/xbin/su
cp_perm 0 0 0755 /tmp/supersu/files/su /system/xbin/daemonsu
cp_perm 0 0 0755 /tmp/supersu/files/su /system/xbin/sugote u:object_r:zygote_exec:s0
cp_perm 0 0 0755 /system/bin/sh /system/xbin/sugote-mksh
cp_perm 0 0 0755 /tmp/supersu/files/supolicy /system/xbin/supolicy
cp_perm 0 0 0644 /tmp/supersu/files/libsupol.so /system/lib/libsupol.so

/tmp/busybox mkdir -p /system/app/SuperSU
set_perm 0 0 0755 /system/app/SuperSU

cp_perm 0 0 0644 /tmp/supersu/files/Superuser.apk /system/app/SuperSU/Superuser.apk
cp_perm 0 0 0755 /tmp/supersu/files/install-recovery.sh /system/etc/install-recovery.sh
ln_con /system/etc/install-recovery.sh /system/bin/install-recovery.sh

/tmp/busybox rm /system/bin/app_process
ln_con /system/xbin/daemonsu /system/bin/app_process

if [ ! -f "/system/bin/app_process32_original" ]; then
  /tmp/busybox mv /system/bin/app_process32 /system/bin/app_process32_original
else
  /tmp/busybox rm /system/bin/app_process32
fi
ln_con /system/xbin/daemonsu /system/bin/app_process32
if [ ! -f "/system/bin/app_process_init" ]; then
  cp_perm 0 2000 0755 /system/bin/app_process32_original /system/bin/app_process_init
fi

cp_perm 0 0 0744 /tmp/supersu/files/99SuperSUDaemon /system/etc/init.d/99SuperSUDaemon
/tmp/busybox echo 1 > /system/etc/.installed_su_daemon
set_perm 0 0 0644 /system/etc/.installed_su_daemon

LD_LIBRARY_PATH=/system/lib /system/xbin/su --install
