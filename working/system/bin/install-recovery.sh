#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:10223616:bd19b88df76197babe51821acd1363e330636fdd; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:9349120:34ad42a5f0221e76f184fbe3e14fc9be24aa0346 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery bd19b88df76197babe51821acd1363e330636fdd 10223616 34ad42a5f0221e76f184fbe3e14fc9be24aa0346:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
