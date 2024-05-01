#!/system/bin/sh
#

mkdir /storage/sdcard1/DUMP
dd if=/dev/block/mmcblk0boot0 of=/storage/sdcard1/DUMP/ROM2_boot0.bin
dd if=/dev/block/mmcblk0boot1 of=/storage/sdcard1/DUMP/ROM3_boot1.bin
dd if=/dev/block/mmcblk0 of=/storage/sdcard1/DUMP/GPT_Table.bin bs=1024 count=1024
dd if=/dev/block/mmcblk0 bs=1024 count=1537536 | gzip > /storage/sdcard1/DUMP/ROM1.bin.gz.001
dd if=/dev/block/mmcblk0 bs=1024 count=1537536 skip=1537536 | gzip > /storage/sdcard1/DUMP/ROM1.bin.gz.002