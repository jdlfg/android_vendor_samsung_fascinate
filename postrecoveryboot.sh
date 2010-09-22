#!/sbin/sh
/sbin/setprop ctl.stop console
kill -9 $(ps | grep /system/bin/sh)

diff /system/bin/sh /res/sh > /dev/null
if [ "$?" != "0" ]
then
    rm /system/bin/sh
    cp /res/sh /system/bin/sh
    chmod +x /system/bin/sh
    sync
    reboot recovery
fi

umount /system
umount /efs
rm /etc
mkdir -p /etc
mkdir -p /dbdata
chmod 4777 /sbin/su
