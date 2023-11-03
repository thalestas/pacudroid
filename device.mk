# Gambiarra to override android.hardware.hdmi.cec.xml
# copied by yukawa device
PRODUCT_COPY_FILES += \
    device/pacu/pacudroid/android.hardware.hdmi.cec.xml:system/etc/permissions/android.hardware.hdmi.cec.xml

# Remove cec packages
LOCAL_OVERRIDES_PACKAGES := \
	android.hardware.tv.cec@1.0-impl \
	android.hardware.tv.cec@1.0-service \
	hdmi_cec.yukawa

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/pacu/pacukernel/$(TARGET_KERNEL_USE)/Image.lz4
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

BOARD_KERNEL_DTB := device/pacu/pacukernel/$(TARGET_KERNEL_USE)
