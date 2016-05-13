# Inherit device configuration
$(call inherit-product, device/yu/lettuce/full_lettuce.mk)

# Inherit common lettuce files.
$(call inherit-product, vendor/minimal/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lettuce
PRODUCT_NAME := vanir_lettuce
PRODUCT_BRAND := YU
PRODUCT_MANUFACTURER := YU
PRODUCT_MODEL := YU5010
PRODUCT_GMS_CLIENTID_BASE := android-micromax
