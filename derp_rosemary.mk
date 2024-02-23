#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/rosemary/device.mk)

# Inherit some common DerpFest Rosemary stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)
$(call inherit-product-if-exists, vendor/MiuiCameraLeica/config.mk)

# Derp Rosemary Flags
TARGET_USES_MINI_GAPPS := true
DERP_BUILDTYPE := COMMUNITY

# Boot animation
scr_resolution := 1080
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Blur properties
TARGET_USES_BLUR := true

PRODUCT_NAME := derp_rosemary
PRODUCT_DEVICE := rosemary
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2101K7BNY

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rosemary-user 12 SP1A.210812.016 V14.0.7.0.TKLMIXM release-keys"

BUILD_FINGERPRINT := Redmi/rosemary_global/rosemary:12/SP1A.210812.016/V14.0.7.0.TKLMIXM:user/release-keys
