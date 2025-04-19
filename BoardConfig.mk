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
TARGET_SCREEN_HEIGHT := 2780
TARGET_SCREEN_WIDTH := 1264

# Kernel
TARGET_KERNEL_SOURCE := kernel/oneplus/sm8650
TARGET_KERNEL_CONFIG := giulia_defconfig

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Security patch level
VENDOR_SECURITY_PATCH := 2024-03-05

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# Include proprietary files
include vendor/oneplus/giulia/BoardConfigVendor.mk 