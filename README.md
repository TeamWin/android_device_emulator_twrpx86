**Team Win Recovery Project (TWRP)**

This is a set of device configs that you can use to build and test TWRP in the Android emulator. Note that adb will take about 10 to 15 seconds after TWRP is booted to become available. Just wait and it will come online eventually.

To boot this in the emulator, build your recoveryimage. With the Android emulator make a new device based on a Galaxy Nexus. Name it TWRP. Choose target Android 5.0.1 and CPU/ABI should be set to Intel Atom (x86). Allow it to have a hardware keyboard and a sdcard sized to 1500MB. Give it a decent sized data partition like 500MB or more. TWRP will be using the data partition as an emulated storage setup as seen on most modern Android devices, so having some extra room may help. Then from your android-sdk/tools folder run the following command:

To boot this in the emulator, build your recoveryimage. With the Android emulator make a new device based on a Galaxy Nexus. Name it TWRP. Allow it to have a hardware keyboard and a sdcard sized to 1500MB. Give it a decent sized data partition like 500MB or more. TWRP will be using the data partition as an emulated storage setup as seen on most modern Android devices, so having some extra room may help. Then from your android-sdk/tools folder run the following command:

```
./emulator -avd TWRP -ramdisk ~/omni_folder/out/target/product/twrpx86/ramdisk-recovery.img
```

For proper emulation of system, data, cache, boot, and recovery partitions you will have to follow the README included with the TWRP for ARM device files. At this time I don't have a static parted binary that can be used on Intel architecture to repartition the sdcard.img. Once you have a working sdcard image from the ARM emulated TWRP, you can copy the sdcard.img file and modify your AVD to use the file for sdcard instead.

Note that the Intel emulated version of TWRP does not need a special kernel to be able to read the partition table for the sdcard.

You can find a compiling guide for TWRP [here](http://forum.xda-developers.com/showthread.php?t=1943625 "Guide").

[More information about the project.](http://www.teamw.in/project/twrp2 "More Information")

If you have code changes to submit those should be pushed to OmniROM's gerrit instance.  A guide can be found [here](http://docs.omnirom.org/Contributing_code "Gerrit Guide").
