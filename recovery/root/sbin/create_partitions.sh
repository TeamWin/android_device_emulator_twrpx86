#!/sbin/sh
# This will repartition the emulated sdcard so that
# you can emulate a newer, non-MTD device.
# This partitioning scheme is based on a 1500MiB
# sdcard.

umount /external_sd

echo "Creating partition table..."
# Wipe all partitions
sgdisk --zap-all /dev/block/vdd
# 8MB boot partition
sgdisk --new=0:0:+8M --change-name=0:"Boot" /dev/block/vdd
# 8MB recovery partition
sgdisk --new=0:0:+8M --change-name=0:"Recovery" /dev/block/vdd
# 34 MB cache partition
sgdisk --new=0:0:+34M --change-name=0:"Cache" /dev/block/vdd
# sdcard partition fills the rest of the space
sgdisk --new=0:0:-0 --change-name=0:"SDCard" /dev/block/vdd

echo "Formatting cache..."
# Format external_sd as vfat
make_ext4fs -S /file_contexts -a /cache /dev/block/vdd3

echo "Formatting external_sd..."
# Format external_sd as vfat
mkfs.fat /dev/block/vdd4
fsck.fat -a /dev/block/vdd4

echo "Mounting new sdcard..."
mount -t vfat /dev/block/vdd4 /external_sd
echo "Done!"
