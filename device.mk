$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)


$(call inherit-product-if-exists, vendor/emulator/twrpx86/twrp-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/emulator/twrpx86/overlay

LOCAL_PATH := device/emulator/twrpx86
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernAl
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    device/emulator/twrpx86/recovery/root/sbin/network_start.sh:recovery/root/sbin/network_start.sh \
    device/emulator/twrpx86/recovery/root/init.recovery.goldfish.rc:root/init.recovery.goldfish.rc \
    device/emulator/twrpx86/recovery/root/sbin/create_partitions.sh:recovery/root/sbin/create_partitions.sh

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := teamwin_twrpx86
PRODUCT_BRAND := teamwin
