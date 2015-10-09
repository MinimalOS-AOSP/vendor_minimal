# Inherit AOSP device configuration for hammerhead.
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Inherit common product files.
$(call inherit-product, vendor/minimal/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := minimal_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE
