#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from grus device
$(call inherit-product, device/xiaomi/grus/device.mk)

# Afterlife_flags
AFTERLIFE_MAINTAINER := sweetbtrfly 
USE_PIXEL_CHARGING := true 
TARGET_SUPPORTS_BLUR := true 
TARGET_FACE_UNLOCK_SUPPORTED := true 

PRODUCT_NAME := afterlife_grus
PRODUCT_DEVICE := grus
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 9 SE

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="grus-user 11 RKQ1.200826.002 V12.5.4.0.RFBCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/grus/grus:11/RKQ1.200826.002/V12.5.4.0.RFBCNXM:user/release-keys
