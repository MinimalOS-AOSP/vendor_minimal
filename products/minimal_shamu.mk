# Inherit AOSP device configuration for shamu.
$(call inherit-product, device/moto/shamu/full_shamu.mk)

# Inherit common product files.
$(call inherit-product, vendor/minimal/config/common.mk)

# Override AOSP build properties
PRODUCT_NAME := minimal_shamu
PRODUCT_BRAND := google
PRODUCT_DEVICE := shamu
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola
