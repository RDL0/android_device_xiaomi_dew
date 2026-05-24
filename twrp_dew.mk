# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/xiaomi/dew/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := dew
PRODUCT_NAME := twrp_dew
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 15C
PRODUCT_MANUFACTURER := Xiaomi
