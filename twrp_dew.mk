$(call inherit-product, vendor/twrp/config/common.mk)

# Unified Device Identity
PRODUCT_DEVICE := dew
PRODUCT_NAME := twrp_dew
PRODUCT_BRAND := REDMI
PRODUCT_MANUFACTURER := Xiaomi

# Models
PRODUCT_MODEL := Redmi 15C / Poco C85
PRODUCT_RELEASE_NAME := Redmi 15C / Poco C85

# Build Fingerprint Baseline Properties
PRODUCT_OVERRIDE_PROP_TAGS += test-keys
