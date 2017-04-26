#
# Copyright (C) 2013-2016 The CyanogenMod Project
#           (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Device configurations for AOSP-CAF
BOARD_AOSP_BASED := true
BOARD_AOSPCAF_BASED := true

# Inherit common AOSP-CAF stuff
ifneq ($(BOARD_AOSPCAF_BASED),)
$(call inherit-product-if-exists, vendor/aosp/common.mk)
endif

# Inherit device configurations
$(call inherit-product, device/sony/mint/device.mk)

# Device display
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Device identifications
PRODUCT_DEVICE := mint
PRODUCT_NAME := aospcaf_mint
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := Xperia T

# Build fingerprints
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT30p BUILD_FINGERPRINT=Sony/LT30p/LT30p:4.3/9.2.A.1.205/Mvv_tg:user/release-keys PRIVATE_BUILD_DESC="LT30p-user 4.3 JB-MR2-BLUE-140313-0947 257 test-keys"
