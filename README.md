**Team Win Recovery Project (TWRP)**

This is a set of device configs that you can use to build and test TWRP in the Android emulator.

To boot this in the emulator, build your recoveryimage. With the Android emulator make a new device based on a Galaxy Nexus. Name it TWRP. Choose target Android 6.0 and CPU/ABI should be set to Intel Atom (x86). Allow it to have a hardware keyboard and a sdcard sized to at least 100MB though more is better if you plan to test backup and restore. Give it a decent sized data partition like 500MB or more. TWRP will be using the data partition as an emulated storage setup as seen on most modern Android devices, so having some extra room may help. Then from your android-sdk/tools folder run the following command:

```
./emulator -avd TWRP -ramdisk /out/target/product/twrpx86/ramdisk-recovery.img
```

After the first boot, wait for ADB to start up, then: adb shell /sbin/create_partitions.sh

This script will partition the sdcard with a boot, recovery, cache, and removable sdcard partition.

Note that the Intel emulated version of TWRP does not need a special kernel to be able to read the partition table for the sdcard.

You can find a compiling guide for TWRP [here](http://forum.xda-developers.com/showthread.php?t=1943625 "Guide").

[More information about the project.](https://twrp.me/ "More Information")

If you have code changes to submit those should be pushed to OmniROM's gerrit instance.  A guide can be found [here](http://docs.omnirom.org/Contributing_code "Gerrit Guide").
