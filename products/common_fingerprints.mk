ifeq ($(TARGET_PRODUCT),minimal_hammerhead)
# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:6.0/MRA58K/2256973:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 6.0 MRA58K 2256973 release-keys"

ifeq ($(TARGET_PRODUCT),minimal_mako)
# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=occam \
    BUILD_FINGERPRINT=google/mako/mako:6.0/MRA58K/2256973:user/release-keys \
    PRIVATE_BUILD_DESC="mako-user 6.0 MRA58K 2256973 release-keys"
endif
