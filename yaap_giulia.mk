#
# Copyright (C) 2024 Yet Another AOSP Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from giulia device
$(call inherit-product, device/oneplus/giulia/device.mk)

# Inherit some common YAAP stuff
$(call inherit-product, vendor/yaap/config/common_full_phone.mk)

PRODUCT_NAME := yaap_giulia
PRODUCT_DEVICE := giulia
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2691

PRODUCT_SYSTEM_NAME := OnePlus13R
PRODUCT_SYSTEM_DEVICE := OP5D3BL1

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="CPH2691IN-user 15 UKQ1.231108.001 V.R4T3.1cff019-3eb5-3eb4 release-keys" \
    BuildFingerprint=OnePlus/CPH2691IN/OP5D3BL1:15/UKQ1.231108.001/V.R4T3.1cff019-3eb5-3eb4:user/release-keys \
    DeviceName=OP5D3BL1 \
    DeviceProduct=CPH2691IN \
    SystemDevice=OP5D3BL1 \
    SystemName=CPH2691IN

BUILD_FINGERPRINT := OnePlus/CPH2691IN/OP5D3BL1:15/UKQ1.231108.001/V.R4T3.1cff019-3eb5-3eb4:user/release-keys 