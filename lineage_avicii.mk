#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from avicii device
$(call inherit-product, device/oneplus/avicii/device.mk)

# Inherit some common riceDroid stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Additional stuff for this product.
TARGET_BOOT_ANIMATION_RES := 1080
RISING_MAINTAINER := Sreeshankar K
RISING_CHIPSET := Snapdragon 765G 5G
TARGET_EXCLUDES_APERTURE := false
TARGET_USES_CUSTOM_AVB_KEY := true
TARGET_SUPPORTS_QUICK_TAP := true
WITH_FOD_ANIMATIONS := true
TARGET_HAS_UDFPS := true
TARGET_USES_BLUR := true 
ifeq ($(WITH_GMS),true)
RISING_PACKAGE_TYPE := GAPPS
TARGET_USE_GOOGLE_TELEPHONY := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
else
RISING_PACKAGE_TYPE := AOSP
endif

# Device specific
PRODUCT_NAME := lineage_avicii
PRODUCT_DEVICE := avicii
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := AC2003

CUSTOM_DEVICE := Nord
PRODUCT_SYSTEM_NAME := Nord
PRODUCT_SYSTEM_DEVICE := Nord

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)
