#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from gauguin device
$(call inherit-product, device/xiaomi/gauguin/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_t801s
PRODUCT_DEVICE := t801s
PRODUCT_BRAND := TCL
PRODUCT_MANUFACTURER := TCL

PRODUCT_GMS_CLIENTID_BASE := android-t801s

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="t801s-user 12 RKQ1.200826.002 V14.0.2.0.SJSMIXM release-keys" \
    BuildFingerprint=TCL/t801s_global/t801s:12/RKQ1.200826.002/V14.0.2.0.SJSMIXM:user/release-keys
