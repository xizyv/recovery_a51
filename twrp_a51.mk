
# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Device configuration
$(call inherit-product, device/samsung/a51/device.mk)

# Device identifier
PRODUCT_RELEASE_NAME := a51
PRODUCT_NAME := twrp_a51
PRODUCT_DEVICE := a51
PRODUCT_MODEL := SM-A515F
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
