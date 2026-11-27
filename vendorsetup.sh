
#
# OrangeFox Recovery device configuration for Samsung Galaxy A51
#

FDEVICE="a51"

export FOX_BUILD_DEVICE="${FOX_BUILD_DEVICE:-$FDEVICE}"
set -x
echo "=== A51 VENDORSETUP START ==="
echo "FOX_BUILD_DEVICE=$FOX_BUILD_DEVICE"

if [ "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
    export ALLOW_MISSING_DEPENDENCIES=true
    export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
    export LC_ALL="C"

    # Recovery partition
    export FOX_RECOVERY_INSTALL_PARTITION="/dev/block/by-name/recovery"

    # OrangeFox 12.1
    export FOX_VANILLA_BUILD=1
    export FOX_ENABLE_APP_MANAGER=1
    export FOX_BUILD_TYPE="Stable"

    # Samsung compatibility
    export OF_NO_SAMSUNG_SPECIAL=1
    export OF_USE_MAGISKBOOT=1
    export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1

    # Device aliases
    export TARGET_DEVICE_ALT="a51, a51ns, a51nsxx"
    export FOX_TARGET_DEVICES="a51, a51ns, a51nsxx"

    # Display
    export OF_FL_PATH1="/system/flashlight"
    export OF_FL_PATH2=""
    export OF_FLASHLIGHT_ENABLE=1
    export OF_HIDE_NOTCH=1
    export OF_CLOCK_POS=1
    export OF_ALLOW_DISABLE_NAVBAR=0

    export OF_STATUS_INDENT_LEFT="48"
    export OF_STATUS_INDENT_RIGHT="48"
    export OF_STATUS_H="88"
    export OF_SCREEN_H="2400"

    # Recovery features
    export OF_USE_SYSTEM_FINGERPRINT=1
    export OF_USE_TWRP_SAR_DETECT=1
    export OF_QUICK_BACKUP_LIST="/super;/boot;/vbmeta;/vbmeta_samsung;/dtbo;/efs;/sec_efs;/modem"
    export OF_USE_HEXDUMP=1
    export OF_SUPPORT_PRE_FLASH_SCRIPT=1
    export OF_ENABLE_LPTOOLS=1
    export OF_DEVICE_WITHOUT_PERSIST=1
    export OF_DONT_KEEP_LOG_HISTORY=1

    # Splash and maintainer
    export OF_SPLASH_MAX_SIZE=104
    export OF_MAINTAINER_AVATAR="$PWD/device/samsung/a51/maintainer.png"

    # Save build variables to log
    if [ -n "$FOX_BUILD_LOG_FILE" ] && [ -f "$FOX_BUILD_LOG_FILE" ]; then
        {
            export | grep "FOX"
            export | grep "OF_"
            export | grep "TARGET_"
            export | grep "TW_"
        } >> "$FOX_BUILD_LOG_FILE"
    fi
else
    echo "Skipping a51 build variables: FOX_BUILD_DEVICE=$FOX_BUILD_DEVICE"
fi

echo "=== A51 VENDORSETUP END ==="
