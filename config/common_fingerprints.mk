ifeq ($(TARGET_PRODUCT),minimal_angler)
# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT=google/angler/angler:6.0.1/MMB29Q/2480792:user/release-keys \
    PRIVATE_BUILD_DESC="angler-user 6.0.1 MMB29Q 2480792 release-keys"
endif

ifeq ($(TARGET_PRODUCT),minimal_hammerhead)
# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:6.0.1/MMB29Q 2480792:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 6.0.1 MMB29Q 2480792 release-keys"
endif

ifeq ($(TARGET_PRODUCT),minimal_mako)
# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=occam \
    BUILD_FINGERPRINT=google/occam/mako:6.0.1/MMB29Q/2480792:user/release-keys \
    PRIVATE_BUILD_DESC="mako-user 6.0.1 MMB29Q 2480792 release-keys"
endif

ifeq ($(TARGET_PRODUCT),minimal_shamu)
# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:6.0.1/MMB29Q/2480792:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 6.0.1 MMB29Q 2480792 release-keys"
endif
