$(call inherit-product, device/beagleboard/beagleboneblack/device.mk)

PRODUCT_NAME := pacudroid_sd
PRODUCT_DEVICE := pacudroid
PRODUCT_BRAND := Android
PRODUCT_MODEL := PacuDroid on SD card
PRODUCT_MANUFACTURE := PacuDroid.org

LOCAL_KERNEL := device/pacu/pacudroid/kernel
TARGET_PREBUILT_KERNEL := $(LOCAL_KERNEL)/zImage
PRODUCT_COPY_FILES += \
					  $(TARGET_PREBUILT_KERNEL):kernel
