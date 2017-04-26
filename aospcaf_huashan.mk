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
$(call inherit-product, device/sony/hayabusa/device.mk)

# Device display
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Device identifications
PRODUCT_DEVICE := hayabusa
PRODUCT_NAME := aospcaf_hayabusa
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := Xperia TX

# Build fingerprints
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT29i BUILD_FINGERPRINT=Sony/LT29i/LT29i:4.3/9.2.A.0.295/2P7_tg:user/release-keys PRIVATE_BUILD_DESC="LT29i-user 4.3 JB-MR2-BLUE-CAF-140119-1326 51 test-keys"
