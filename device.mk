#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8550-common
$(call inherit-product, device/oneplus/sm8550-common/common.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl-qti \
    android.hardware.boot@1.2-impl-qti.recovery \
    android.hardware.boot@1.2-service \
    bootctrl.pineapple \
    bootctrl.pineapple.recovery

PRODUCT_PACKAGES_DEBUG += \
    bootctl

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# API
PRODUCT_SHIPPING_API_LEVEL := 35

# Boot animation
TARGET_SCREEN_HEIGHT := 2772
TARGET_SCREEN_WIDTH := 1240

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Properties
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true

# Rootdir
PRODUCT_PACKAGES += \
    init.recovery.qcom.rc

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    hardware/oplus

# Inherit the proprietary files
$(call inherit-product, vendor/oneplus/giulia/giulia-vendor.mk)

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@7.1-impl \
    android.hardware.audio.effect@7.0-impl \
    android.hardware.audio.service

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.7-impl \
    android.hardware.camera.provider@2.7-service_64 \
    vendor.qti.hardware.camera.postproc@1.0.vendor

# Lineage Health
PRODUCT_PACKAGES += \
    vendor.lineage.health-service.default

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2-service \
    com.android.nfc_extras \
    Tag

PRODUCT_ENFORCE_RRO_TARGETS := *
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage

# Kernel
TARGET_KERNEL_VERSION := 6.1.75

# Kernel Modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/dtb.img:dtb.img \
    $(LOCAL_PATH)/prebuilts/modules/ramdisk/modules.load:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/lib/modules/modules.load \
    $(LOCAL_PATH)/prebuilts/modules/ramdisk/modules.load.recovery:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/lib/modules/modules.load.recovery

# Enable DM file pre-opting to reduce first boot time
PRODUCT_FS_VERITY_CERTIFICATE := build/target/product/security/verity.x509.pem
PRODUCT_PACKAGES += \
    dmverity.rc

PRODUCT_PACKAGES += \
    FrameworksResGiulia \
    SystemUIResGiulia \
    ApertureResGiulia

# Trust HAL
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service

# LiveDisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.1-service.oneplus

# Touch
PRODUCT_PACKAGES += \
    vendor.lineage.touch@1.0-service.oneplus

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0 \
    libhidltransport.vendor \
    libhwbinder.vendor

# Lineage Charging Control
PRODUCT_PACKAGES += \
    vendor.lineage.chgctrl@1.0-service.oneplus

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@2.1-service.oneplus-multihal \
    vendor.lineage.fastcharge@1.0-service.oneplus
