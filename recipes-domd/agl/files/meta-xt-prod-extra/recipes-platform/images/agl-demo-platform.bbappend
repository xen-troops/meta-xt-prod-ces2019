require inc/agl-image.inc

inherit populate_sdk_qt5

IMAGE_INSTALL_remove = " \
    aos-vis \
    telemetry-emulator \
"
