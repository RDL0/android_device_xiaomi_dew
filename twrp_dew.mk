# Inherit from standard build architecture configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_caps.mk)

# Inherit TWRP minimal setup variables
$(call inherit-product, vendor/twrp/config/common.mk)

# Unified Device Identity Flags
PRODUCT_DEVICE := dew
PRODUCT_NAME := twrp_dew
PRODUCT_BRAND := REDMI
PRODUCT_MANUFACTURER := Xiaomi

# Display Configuration for the UI Screen
PRODUCT_MODEL := Redmi 15C / Poco C85
PRODUCT_RELEASE_NAME := Redmi 15C / Poco C85

# Build Fingerprint Baseline Properties
PRODUCT_OVERRIDE_PROP_TAGS += test-keys
