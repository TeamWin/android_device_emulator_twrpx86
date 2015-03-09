# Release name
PRODUCT_RELEASE_NAME := twrpx86

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/emulator/twrpx86/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := twrpx86
PRODUCT_NAME := cm_twrpx86
PRODUCT_BRAND := teamwin
PRODUCT_MODEL := twrpx86
PRODUCT_MANUFACTURER := teamwin
