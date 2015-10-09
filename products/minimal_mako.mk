# Inherit AOSP device configuration for mako.
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit common product files.
$(call inherit-product, vendor/minimal/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := minimal_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE
