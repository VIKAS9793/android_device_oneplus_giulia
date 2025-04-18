#
# Copyright (C) 2024 Yet Another AOSP Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8650-common
include device/oneplus/sm8650-common/BoardConfig.mk

DEVICE_PATH := device/oneplus/giulia

# Display
TARGET_SCREEN_DENSITY := 450

# Kernel
TARGET_KERNEL_SOURCE := kernel/oneplus/sm8650
TARGET_KERNEL_CONFIG := giulia_defconfig

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# Include proprietary files
include vendor/oneplus/sm8650-common/BoardConfigVendor.mk 