# Inherit AOSP device configuration for mako.
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

# Inherit common product files.
$(call inherit-product, vendor/minimal/config/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := minimal_angler
PRODUCT_BRAND := google
PRODUCT_DEVICE := angler
PRODUCT_MODEL := Nexus 6P
PRODUCT_MANUFACTURER := Huawei
