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