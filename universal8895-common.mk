#
# Copyright (C) 2017 The LineageOS Project
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

LOCAL_PATH := device/samsung/universal8895-common

# Common Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Flat device tree for boot image
PRODUCT_PACKAGES += \
    dtbhtoolExynos

# Filesystem tools for resizing system partition filesystem
#PRODUCT_PACKAGES += \
#    e2fsck_static \
#    resize2fs_static

# Filesystem management
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# NTFS and ExFAT
PRODUCT_PACKAGES += \
    fsck.exfat \
    fsck.ntfs \
    mke2fs \
    mkfs.exfat \
    mkfs.ntfs \
    mount.ntfs

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.samsungexynos8895 \
    init.baseband.rc \
    init.baseband.sh \
    init.carrier.rc \
    init.gps.rc \
    init.samsung.rc \
    init.samsungexynos8895.rc \
    init.samsungexynos8895.usb.rc \
    init.wifi.rc \
    ueventd.samsungexynos8895.rc

# last_logcat
#PRODUCT_PACKAGES += \
#    loggy.sh

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:system/etc/permissions/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:system/etc/permissions/android.software.freeform_window_management.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.heartrate.xml:system/etc/permissions/android.hardware.sensor.heartrate.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    $(LOCAL_PATH)/configs/permissions/com.samsung.permission.HRM_EXT.xml:system/etc/permissions/com.samsung.permission.HRM_EXT.xml \
    $(LOCAL_PATH)/configs/permissions/com.samsung.permission.SSENSOR.xml:system/etc/permissions/com.samsung.permission.SSENSOR.xml

# These are the hardware-audio low
#PRODUCT_COPY_FILES += \
#    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml

# Permissions Vulkan
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:system/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:system/etc/permissions/android.hardware.vulkan.compute.xml

# Seccomp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediacodec-seccomp.policy:system/vendor/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/seccomp/mediaextractor-seccomp.policy:system/vendor/etc/seccomp_policy/mediaextractor.policy

# Graphics
PRODUCT_AAPT_CONFIG := xlarge large
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
# A list of dpis to select prebuilt apk, in precedence order.
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi

# Graphics
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl

# libhwc2on1adapter
PRODUCT_PACKAGES += \
    libhwc2on1adapter

# Graphics shim
PRODUCT_PACKAGES += \
    libprocname \
    libui_shim \
    libExynosOMX_shim

# Memtrack
PRODUCT_PACKAGES += \
    android.hardware.memtrack@1.0-impl

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# Configstore
PRODUCT_PACKAGES += \
    android.hardware.configstore@1.1-service

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init/android.hardware.media.omx@1.0-service.rc:system/vendor/etc/init/android.hardware.media.omx@1.0-service.rc

#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/configs/init/mediaserver.rc:system/etc/init/mediaserver.rc

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-service.exynos8895

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl-dream

# libbt-vendor
#PRODUCT_PACKAGES += \
#    libbt-vendor

# Radio
PRODUCT_PACKAGES += \
    libxml2 \
    libprotobuf-cpp-full

# libril
PRODUCT_PACKAGES += \
    libril \
    modemloader \
    rild

# Radio
PRODUCT_PACKAGES += \
    android.hardware.radio@1.0 \
    android.hardware.radio.deprecated@1.0

# Radio (audio-dependency)
#PRODUCT_PACKAGES += \
#    libsecril-client \
#    libsecril-client-sap

# Fingerprint
#PRODUCT_PACKAGES += \
#    fingerprint.exynos5 \
#    android.hardware.biometrics.fingerprint@2.1-service

# Fingerprint shim
PRODUCT_PACKAGES += \
    libbauthtzcommon_shim

# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl.exynos8895 \
    libsensor_shim

PRODUCT_PACKAGES += \
    SamsungServiceMode

# IPv6
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# Camera
PRODUCT_PACKAGES += \
    camera.universal8895 \
    libstagefright_shim \
    libcamera_client_shim \
    camera.device@3.2-impl \
    camera.device@1.0-impl \
    android.hardware.camera.provider@2.4-impl.exynos8895 \
    android.hardware.camera.provider@2.4-service

# Camera shim
PRODUCT_PACKAGES += \
    libexynoscamera_shim

# Camera configurations
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/external_camera_config.xml:system/vendor/etc/external_camera_config.xml

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/vendor/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/vendor/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/filter_ie:system/vendor/etc/wifi/filter_ie

PRODUCT_PACKAGES += \
    macloader \
    wifiloader \
    hostapd \
    wificond \
    wifilogd \
    wlutil \
    libwpa_client \
    wpa_supplicant \
    android.hardware.wifi@1.0-service \
    android.hardware.wifi@1.0 \
    android.hardware.wifi@1.0-impl

# external/wpa_supplicant_8/wpa_supplicant/wpa_supplicant_conf.mk
PRODUCT_PACKAGES += \
    wpa_supplicant.conf

# NFC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/libnfc-brcm.conf:system/vendor/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-nci.conf:system/vendor/etc/libnfc-nci.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-sec-hal.conf:system/etc/libnfc-sec-hal.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-sec.conf:system/etc/libnfc-sec.conf \
    $(LOCAL_PATH)/configs/nfc/nfcee_access.xml:system/etc/nfcee_access.xml

# NFC HAL
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    NfcNci \
    Tag \
    android.hardware.nfc@1.0-impl

# NFC nci
PRODUCT_PACKAGES += \
    libnfc-nci \
    libnfc_nci_jni

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:system/vendor/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/audio/audio_effects.conf:system/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/audio/mixer_gains.xml:system/etc/mixer_gains.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    tinymix \
    libtinycompress \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl

# Audio
#PRODUCT_PACKAGES += \
#    audio.primary.universal8895

# Audio
#PRODUCT_PACKAGES += \
#    android.hardware.soundtrigger@2.0-impl

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml  \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media/media_profiles_V1_0.xml:system/vendor/etc/media_profiles_V1_0.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/gps.conf:system/etc/gps_debug.conf \
    $(LOCAL_PATH)/configs/gps/gps.xml:system/vendor/etc/gnss/gps.xml \
    $(LOCAL_PATH)/configs/gps/lhd.conf:system/vendor/etc/sensor/lhd.conf

# Touchscreen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/ft5x06_ts.idc:system/usr/idc/ft5x06_ts.idc \
    $(LOCAL_PATH)/configs/idc/sec_touchscreen.idc:system/usr/idc/sec_touchscreen.idc

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/gpio_keys.kl:system/usr/keylayout/gpio_keys.kl

# Keylayout
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/configs/keylayout/samsung.kl:system/usr/keylayout/samsung.kl

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

# Power
PRODUCT_PACKAGES += \
    power.universal8895 \
    android.hardware.power@1.0-impl

# Lights
#    lights.universal8895
#    android.hardware.light@2.0-impl
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.exynos8895

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.exynos8895

# Packages
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# libhidl
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

# Gatekeeper
#PRODUCT_PACKAGES += \
#    android.hardware.gatekeeper@1.0-service \
#    android.hardware.gatekeeper@1.0-impl

# Offmode charger
PRODUCT_PACKAGES += \
    charger_res_images

# Network
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# Superuser
PRODUCT_PACKAGES += \
    su

# Busybox
#PRODUCT_PACKAGES += \
#    Busybox

# Snap Camera
PRODUCT_PACKAGES += \
    Snap

# Remove unwanted packages
PRODUCT_PACKAGES += \
    RemovePackages

# SamsungDoze
PRODUCT_PACKAGES += \
    SamsungDoze

# libion
PRODUCT_PACKAGES += \
    libion

# Trust
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service

# Livedisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.0-service.exynos8895

# Touch
#PRODUCT_PACKAGES += \
#    vendor.lineage.touch@1.0-service.samsung

# TextClassifier
#PRODUCT_PACKAGES += \
#    textclassifier.bundle1

# Selective power profile from a file.
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/power_profile.xml:system/etc/power_profile.xml

# System properties
include $(LOCAL_PATH)/system_prop.mk

# call Samsung LSI board support package
#$(call inherit-product, hardware/samsung_slsi-cm/exynos5/exynos5.mk)
#$(call inherit-product, hardware/samsung_slsi-cm/exynos8895/exynos8895.mk)

# call the proprietary setup
$(call inherit-product, vendor/samsung/universal8895-common/universal8895-common-vendor.mk)
$(call inherit-product, vendor/samsung/universal8895-seal/universal8895-seal-vendor.mk)
