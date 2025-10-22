#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from t801s device
$(call inherit-product, device/tcl/t801s/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_t801s
PRODUCT_DEVICE := t801s
PRODUCT_BRAND := TCL
PRODUCT_MANUFACTURER := TCL

PRODUCT_GMS_CLIENTID_BASE := android-t801s

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="t801s-user 12 SKQ1.211006.001 5EGM release-keys" \
    BuildFingerprint=TCL/T801S/Ottawa11/SKQ1.211001.001/5EGM/user/release-keys
