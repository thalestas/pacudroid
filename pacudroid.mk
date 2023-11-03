PRODUCT_NAME := pacudroid
PRODUCT_DEVICE := pacudroid
PRODUCT_MODEL := pacudroid

$(call inherit-product, device/pacu/pacudroid/device.mk)
$(call inherit-product, device/amlogic/yukawa/yukawa.mk)

