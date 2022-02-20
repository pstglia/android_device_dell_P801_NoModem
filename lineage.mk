# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/dell/P801_NoModem/device.mk)

DEVICE_PACKAGE_OVERLAYS += device/dell/P801_NoModem/overlay

PRODUCT_RUNTIMES := runtime_libart_default

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_P801_NoModem
PRODUCT_BRAND := dell
PRODUCT_MODEL := Venue 8 3830
PRODUCT_MANUFACTURER := Dell
PRODUCT_DEVICE := P801_NoModem

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=Tablet8 \
    BUILD_FINGERPRINT=dell/Tablet8/P801_NoModem:7.1/KOT49H/userdebug.build.20220220.142900:user/release-keys  \
    PRIVATE_BUILD_DESC="P801_NoModem-user 5.0  WW_user_3.10.20.00_20220220_12 release-keys"
