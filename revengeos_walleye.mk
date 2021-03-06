# Inherit some common RevengeOS stuff
$(call inherit-product, vendor/revengeos/config/common.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit device configuration
$(call inherit-product, device/google/walleye/aosp_walleye.mk)

# Device identifiers
PRODUCT_DEVICE := walleye
PRODUCT_NAME := revengeos_walleye
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2
PRODUCT_MANUFACTURER := Google
PRODUCT_RELEASE_NAME := walleye

# Override Fingerprint for Safetynet passing
#PRODUCT_BUILD_PROP_OVERRIDES += \
#    PRODUCT_NAME=walleye \
#    PRIVATE_BUILD_DESC="redfin-user 11 RQ2A.210505.003 7255357 release-keys"

#BUILD_FINGERPRINT := google/redfin/redfin:11/RQ2A.210505.003/7255357:user/release-keys

# RevengeOS maintainer
REVENGEOS_BUILDTYPE := OFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080

$(call inherit-product-if-exists, vendor/google/walleye/walleye-vendor.mk)
