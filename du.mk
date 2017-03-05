#
# Copyright 2015-2017 The Android Open Source Project
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

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit base device configuration
$(call inherit-product, device/nextbit/ether/device.mk)
$(call inherit-product, vendor/nextbit/ether/device-vendor.mk)

# Inherit some common DU stuff.
$(call inherit-product, vendor/du/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := du_ether
PRODUCT_DEVICE := ether
PRODUCT_BRAND := Nextbit
PRODUCT_MODEL := Robin
PRODUCT_MANUFACTURER := Nextbit

PRODUCT_PACKAGES += \
    Launcher3

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Nextbit/NBQ_00WW_FIH/NBQ_BSP:7.0/Robin_Nougat_57_u/00WW_Jenkins_57:user/test-keys" \
    PRIVATE_BUILD_DESC="NBQ_00WW_FIH-user 7.0 Robin_Nougat_57_u 00WW_Jenkins_57 test-keys"
