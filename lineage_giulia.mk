#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from giulia device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := OnePlus
PRODUCT_DEVICE := giulia
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := CPH2691
PRODUCT_NAME := lineage_giulia
PRODUCT_SYSTEM_NAME := OnePlus13R
PRODUCT_SYSTEM_DEVICE := OP5D3BL1

# Build info
BUILD_FINGERPRINT := "OnePlus/CPH2691/OP5D3BL1:15/UKQ1.231108.001/T.R4T3.150e0e-1-2:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    PRODUCT_NAME=$(PRODUCT_SYSTEM_NAME) \
    PRIVATE_BUILD_DESC="CPH2691-user 15 UKQ1.231108.001 T.R4T3.150e0e-1-2 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oneplus 