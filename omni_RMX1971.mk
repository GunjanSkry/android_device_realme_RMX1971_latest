#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from RMX1971 device
$(call inherit-product, device/realme/RMX1971/device.mk)

PRODUCT_DEVICE := RMX1971
PRODUCT_NAME := omni_RMX1971
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX1971
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_RMX1971-eng 99 RQ1A.210205.004 eng.nao.20230720.093206 test-keys"

BUILD_FINGERPRINT := realme/twrp_RMX1971/RMX1971:99/RQ1A.210205.004/nao07201032:eng/test-keys
