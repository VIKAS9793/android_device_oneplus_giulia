#
# Copyright (C) 2024 Yet Another AOSP Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8650-common
$(call inherit-product, device/oneplus/sm8650-common/common.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2780
TARGET_SCREEN_WIDTH := 1264

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/camera/camera_config.xml:$(TARGET_COPY_OUT_ODM)/etc/camera/camera_config.xml

PRODUCT_PACKAGES += \
    OnePlusCameraProvider

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-yaap

PRODUCT_PACKAGES += \
    OpenDeltaOverlay \
    OpenDeltaOverlayVanilla \
    OnePlus13RCameraOverlay

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    hardware/qcom-caf/sm8650

# Properties
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.version.yaap=$(YAAP_VERSION)

# Inherit from the proprietary files
$(call inherit-product, vendor/oneplus/sm8650-common/sm8650-common-vendor.mk) 