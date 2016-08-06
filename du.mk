# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common DU stuff.
$(call inherit-product, vendor/du/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/nextbit/ether/device.mk)
$(call inherit-product, vendor/du/config/nfc_enhanced.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := du_ether
BOARD_VENDOR := nextbit
TARGET_VENDOR := nextbit
PRODUCT_DEVICE := ether

PRODUCT_BRAND := Nextbit
PRODUCT_MODEL := Robin
PRODUCT_MANUFACTURER := Nextbit

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Nextbit/ether/ether:6.0.1/MMB29M/00WW_1_350:user/release-keys \
    PRIVATE_BUILD_DESC="ether-user 6.0.1 MMB29M 00WW_1_350 release-keys"
