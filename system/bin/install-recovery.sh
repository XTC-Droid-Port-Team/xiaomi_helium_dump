#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:15285582:950fc528e4a241d09d61fa49795611a705f5e83f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:13430090:31a7e35aefb8aba4e556d8a05f587ca261d1fd29 EMMC:/dev/block/bootdevice/by-name/recovery 950fc528e4a241d09d61fa49795611a705f5e83f 15285582 31a7e35aefb8aba4e556d8a05f587ca261d1fd29:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
