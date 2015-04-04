# Inherit common ABIP stuff
$(call inherit-product, vendor/abip/config/common.mk)

# Include ABIP audio files
include vendor/abip/config/cm_audio.mk

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/abip/prebuilt/common/bootanimation/800.zip:system/media/bootanimation.zip
endif
