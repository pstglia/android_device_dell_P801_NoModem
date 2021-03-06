 #
# Copyright 2013 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

BOARD_TOUCHSCREEN_DRIVER := rmi4_ts

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

DEVICE_PACKAGE_OVERLAYS := \
    device/dell/P801_NoModem/overlay

# Art
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-swap=false

# Audio
PRODUCT_PACKAGES += \
    libshim_audio \
    libtinycompress \
    libtinyalsa \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default

PRODUCT_COPY_FILES += \
    device/dell/P801_NoModem/audio/asound.conf:system/etc/asound.conf \
    device/dell/P801_NoModem/audio/audio_policy.conf:system/etc/audio_policy.conf
#    device/dell/P801_NoModem/audio/route_criteria.conf:system/etc/route_criteria.conf

# Bluetooth
PRODUCT_COPY_FILES += \
    device/dell/P801_NoModem/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf \
    device/dell/P801_NoModem/bluetooth/bt_Tablet8.conf:system/etc/bluetooth/bt_Tablet8.conf \
    device/dell/P801_NoModem/bluetooth/bt_stack.conf:system/etc/bluetooth/bt_stack.conf \
    device/dell/P801_NoModem/bluetooth/bt_did.conf:system/etc/bluetooth/bt_did.conf \
    device/dell/P801_NoModem/bluetooth/auto_pair_devlist.conf:system/etc/bluetooth/auto_pair_devlist.conf

PRODUCT_PROPERTY_OVERRIDES += \
    bt.hfp.WideBandSpeechEnabled=true

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    ro.dalvik.vm.isa.arm=x86 \
    dalvik.vm.implicit_checks=none

# Display
PRODUCT_PACKAGES += \
    pvr_drv_video \
    libgbf

# Flip Cover App
PRODUCT_PACKAGES += \
    FlipFlap

# GPS
PRODUCT_PACKAGES += \
    libshim_gps

PRODUCT_COPY_FILES += \
    device/dell/P801_NoModem/configs/gps.conf:system/etc/gps.conf \
    device/dell/P801_NoModem/configs/gps.xml:system/etc/gps.xml \
    device/dell/P801_NoModem/configs/gps_logcat.xml:system/etc/gps_logcat.xml \
    device/dell/P801_NoModem/configs/gps_rs.xml:system/etc/gps_rs.xml \
    device/dell/P801_NoModem/configs/gps_spirent.xml:system/etc/gps_spirent.xml \
    device/dell/P801_NoModem/configs/gps_spirent_areaid.xml:system/etc/gps_spirent_areaid.xml \
    device/dell/P801_NoModem/configs/gps_spirent_hslp.xml:system/etc/gps_spirent_hslp.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.spid.gps.pmm=disabled \
    ro.spid.gps.tty=ttyMFD3 \
    ro.spid.gps.FrqPlan=FRQ_PLAN_26MHZ_2PPM \
    ro.spid.gps.RfType=GL_RF_4752_BRCM_EXT_LNA

# Houdini (arm native bridge)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.enable.native.bridge.exec=1

ADDITIONAL_DEFAULT_PROPERTIES += ro.dalvik.vm.native.bridge=libhoudini.so

# Key layout files
PRODUCT_COPY_FILES += \
    device/dell/P801_NoModem/keylayout/synaptics_dsx.idc:system/usr/idc/$(BOARD_TOUCHSCREEN_DRIVER).idc \
    device/dell/P801_NoModem/keylayout/synaptics_dsx.kcm:system/usr/keychars/$(BOARD_TOUCHSCREEN_DRIVER).kcm \
    device/dell/P801_NoModem/keylayout/synaptics_dsx.kl:system/usr/keylayout/$(BOARD_TOUCHSCREEN_DRIVER).kl \
    device/dell/P801_NoModem/keylayout/cloverview_audio_Intel_MID_Audio_Jack.kl:system/usr/keylayout/cloverview_audio_Intel_MID_Audio_Jack.kl \
    device/dell/P801_NoModem/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/dell/P801_NoModem/keylayout/Vendor_0b05_Product_17fc.kl:system/usr/keylayout/Vendor_0b05_Product_17fc.kl \
    device/dell/P801_NoModem/keylayout/Vendor_0b05_Product_1803.kl:system/usr/keylayout/Vendor_0b05_Product_1803.kl

# Keystore
PRODUCT_PACKAGES += \
    keystore.clovertrail

# Lights
PRODUCT_PACKAGES += \
    lights.clovertrail

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.com.widevine.cachesize=16777216

PRODUCT_COPY_FILES += \
    device/dell/P801_NoModem/media/media_codecs.xml:system/etc/media_codecs.xml \
    device/dell/P801_NoModem/media/media_profiles.xml:system/etc/media_profiles.xml \
    device/dell/P801_NoModem/media/wrs_omxil_components.list:system/etc/wrs_omxil_components.list \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# Media: SDK and OMX IL components
PRODUCT_PACKAGES += \
    msvdx_bin \
    topaz_bin

# Media: libva
PRODUCT_PACKAGES += \
    libva \
    libva-android \
    libva-tpi \
    vainfo

# Media: libstagefrighthw
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libshims_wvm

# libmix
PRODUCT_PACKAGES += \
    libmixvbp_mpeg4 \
    libmixvbp_h264 \
    libmixvbp_h264secure \
    libmixvbp_vc1 \
    libva_videodecoder \
    libva_videoencoder

PRODUCT_PACKAGES += \
    libwrs_omxil_common \
    libwrs_omxil_core_pvwrapped \
    libOMXVideoDecoderH263 \
    libOMXVideoDecoderMPEG4 \
    libOMXVideoEncoderAVC \
    libOMXVideoDecoderWMV \
    libOMXVideoEncoderH263 \
    libOMXVideoEncoderMPEG4

# PowerHAL
PRODUCT_PACKAGES += \
    power.P801_NoModem

# Radio
PRODUCT_PACKAGES += \
    libshim_mmgr \
    libshim_tcs

PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.status.polling.enable=0 \
    rild.libpath=/system/lib/librapid-ril-core.so \
    ro.telephony.default_network=9 \
    ro.ril.telephony.mqanelements=5

# Ramdisk
PRODUCT_PACKAGES += \
    config_init.sh \
    fstab.P801_NoModem \
    init.avc.rc \
    init.bt.rc \
    init.bt.vendor.rc \
    init.class_main.sh \
    init.common.rc \
    init.config_init.rc \
    init.debug.rc \
    init.diag.rc \
    init.firmware.rc \
    init.gps.rc \
    init.modem.rc \
    init.P801_NoModem.rc \
    init.platform.usb.rc \
    init.power.P801_NoModem.rc \
    init.recovery.P801_NoModem.rc \
    init.watchdog.rc \
    init.wifi.rc \
    init.wifi.vendor.rc \
    init.zram.rc \
    ueventd.P801_NoModem.rc \
    gps_daemon.sh \
    gps_lto.sh \
    init.compass.rc \
    init.wireless.rc \
    debuglog.sh

# Stlport
PRODUCT_PACKAGES += \
    libstlport

# Sensors
PRODUCT_PACKAGES += \
    libshim_sensors

PRODUCT_COPY_FILES += \
    device/dell/P801_NoModem/configs/sensor_hal_config_default.xml:system/etc/sensor_hal_config_default.xml \
    device/dell/P801_NoModem/configs/sensor_hal_config_general_default.xml:system/etc/sensor_hal_config_general_default.xml \
    device/dell/P801_NoModem/configs/sensor_hal_config_general_scale-pr1.xml:system/etc/sensor_hal_config_general_scale-pr1.xml \
    device/dell/P801_NoModem/configs/sensor_hal_config_scale-pr1.xml:system/etc/sensor_hal_config_scale-pr1.xml 

# pvr
PRODUCT_PACKAGES += \
    libpvr2d

# libdrm
PRODUCT_PACKAGES += \
    libdrm \
    dristat \
    drmstat

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    lib_driver_cmd_bcmdhd \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    device/dell/P801_NoModem/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

$(call inherit-product-if-exists, vendor/dell/P801_NoModem/P801_NoModem-vendor.mk)

# Intel_updater
PRODUCT_PACKAGES += \
    liboempartitioning_static \
    libcgpt_static \
    libintel_updater

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320

# Ramdisk config of governors
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.sys.perf.device.powersave=800000 \
    ro.sys.perf.device.full=2000000 \
    ro.sys.perf.device.touchboost=1330000

# Alsa
PRODUCT_PACKAGES += \
    tinyplay \
    tinycap \
    tinymix

PRODUCT_COPY_FILES += \
    device/dell/P801_NoModem/audio/silence.wav:system/etc/silence.wav

# Add WiFi Firmware
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4339/device-bcm.mk)

# hardware optimizations
#PRODUCT_PROPERTY_OVERRIDES += \
#    dalvik.vm.isa.x86.features=sse4_2,aes_in,popcnt,movbe

PRODUCT_COPY_FILES += \
    device/dell/P801_NoModem/debuglog.sh:sbin/debuglog.sh

PRODUCT_PROPERTY_OVERRIDES += \
    qemu.he.mainkeys=0
