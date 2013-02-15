NODE=/dev/sdb

sudo dd if=/dev/zero of=${NODE} bs=512 count=2047   
sudo dd if=u-boot-no-padding.bin of=${NODE} bs=1K seek=1 && sync 
sudo dd if=../linux-imx/arch/arm/boot/uImage of=${NODE} bs=1M seek=1 && sync

