# Generic product
PRODUCT_NAME := minimal
PRODUCT_BRAND := minimal
PRODUCT_DEVICE := generic

#AOSP Fixes
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.mobiledata=false
    ro.com.android.dataroaming=false
    ro.setupwizard.network_required=false \
    ro.setupwizard.gservices_delay=-1
    ro.adb.secure=1

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/minimal/overlay/common

#Extra Packages
PRODUCT_PACKAGES += \
    Busybox \
    Launcher3 \
    WallpaperPicker \
    Stk

# Proprietary latinime libs needed for Keyboard swyping
ifneq ($(filter minimal_hammerhead minimal_mako minimal_shamu,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/minimal/prebuilt/common/system/lib/libjni_latinime.so:system/lib/libjni_latinime.so
else
PRODUCT_COPY_FILES += \
    vendor/minimal/prebuilt/common/system/lib64/libjni_latinime.so:system/lib64/libjni_latinime.so
endif

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# APN list
PRODUCT_COPY_FILES += \
    vendor/minimal/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Init.d script support
PRODUCT_COPY_FILES += \
    vendor/minimal/prebuilt/common/bin/sysinit:system/bin/sysinit

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/minimal/prebuilt/common/addon.d/50-minimal.sh:system/addon.d/50-minimal.sh \
    vendor/minimal/prebuilt/common/addon.d/99-backup.sh:system/addon.d/99-backup.sh \
    vendor/minimal/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/minimal/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/minimal/prebuilt/common/etc/backup.conf:system/etc/backup.conf

# Include common fingerprints
include vendor/minimal/config/common_fingerprints.mk

# Camera Effects for devices without a vendor partition
ifneq ($(filter minimal_hammerhead minimal_mako minimal_shamu,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES +=  \
    vendor/minimal/prebuilt/common/vendor/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    vendor/minimal/prebuilt/common/vendor/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd
endif

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/minimal/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/minimal/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon
	
# Bootanimation (add if it exists)
ifneq ($(wildcard vendor/minimal/prebuilt/bootanimation/$(TARGET_DEVICE).zip),)
PRODUCT_COPY_FILES += \
        vendor/vendor/prebuilt/bootanimation/$(TARGET_DEVICE).zip:system/media/bootanimation.zip
endif
