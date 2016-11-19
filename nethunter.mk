# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/nethunter/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/hammerheadcaf/device.mk)

PRODUCT_RESTRICT_VENDOR_FILES := false

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hammerheadcaf
PRODUCT_NAME := nethunter_hammerheadcaf
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5 CAF
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:6.0.1/M4B30X/3237893:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 6.0.1 M4B30X 3237893 release-keys"