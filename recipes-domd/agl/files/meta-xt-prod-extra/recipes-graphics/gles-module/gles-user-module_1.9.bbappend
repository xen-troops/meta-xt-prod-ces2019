FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

require inc/xt_shared_env.inc

BRANCH = "1.9/4991288"
SRCREV = "${AUTOREV}"

# Default place for binaries and shared libraries
EXTRA_OEMAKE += "BIN_DESTDIR=/usr/bin"
EXTRA_OEMAKE += "SHARE_DESTDIR=/usr/share"

SRC_URI_remove = " \
    file://gcc6_pvr_um_1.9.patch \
"

SRC_URI_append = " \
    file://0001-Make-compiler-target-aarch64-agl-linux-be-recognized.patch \
"

EXTRA_OEMAKE += "PVRSRV_VZ_NUM_OSID=${XT_PVR_NUM_OSID}"
DEPENDS += " gles-module-egl-headers wayland-native"
RDEPENDS_${PN} += "python"

FILES_${PN} += " \
    ${exec_prefix}/share/* \
"

do_install_append() {
    install -d ${DEPLOY_DIR_IMAGE}/xt-rcar
    cp -rf ${D}/* ${DEPLOY_DIR_IMAGE}/xt-rcar
}
