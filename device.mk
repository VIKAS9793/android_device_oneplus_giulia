#
# Copyright (C) 2024 Yet Another AOSP Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8650-common
$(call inherit-product, device/oneplus/sm8650-common/common.mk)

DEVICE_PATH := device/oneplus/giulia

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2780
TARGET_SCREEN_WIDTH := 1264

# Camera
PRODUCT_PACKAGES += \
    Camera2

# Overlays
PRODUCT_PACKAGES += \
    FrameworksResGiulia \
    SystemUIResGiulia \
    SettingsResGiulia \
    OpenDeltaOverlay \
    OpenDeltaOverlayVanilla

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# Inherit from the proprietary files
$(call inherit-product, vendor/oneplus/sm8650-common/sm8650-common-vendor.mk)

# Additional Hardware Components
PRODUCT_PACKAGES += \
    android.hardware.thermal@2.0-service.qti \
    android.hardware.biometrics.face@1.0-service \
    android.hardware.biometrics.fingerprint@2.3-service \
    android.hardware.light@2.0-service \
    android.hardware.vibrator@1.3-service.oneplus \
    vendor.oneplus.hardware.CameraMDMHIDL@1.0-service \
    vendor.oneplus.hardware.display@1.0-service

# Additional Vendor Libraries
PRODUCT_PACKAGES += \
    vendor.qti.hardware.display.mapper@4.0.vendor \
    vendor.qti.hardware.display.mapperextensions@1.1.vendor \
    vendor.qti.hardware.camera.postproc@1.0.vendor \
    vendor.qti.hardware.systemhelper@1.0.vendor \
    vendor.oneplus.hardware.camera@1.0.vendor \
    vendor.oneplus.hardware.display@1.0.vendor

# Device characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Display
TARGET_SCREEN_HEIGHT := 2780
TARGET_SCREEN_WIDTH := 1264
TARGET_SCREEN_DENSITY := 450

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.uicc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.uicc.xml \
    frameworks/native/data/etc/android.hardware.se.omapi.uicc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.se.omapi.uicc.xml 