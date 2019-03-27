DESCRIPTION = "AGL surface switcher"
SECTION     = "apps"

LICENSE     = "GPLv2"
LIC_FILES_CHKSUM = "file://LICENSE;md5=a23a74b3f4caf9616230789d94217acb"

SRC_URI = "git://github.com/xen-troops/agl_surface_switcher.git;protocol=https"
SRCREV  = "267e4f931d6edd62009d933b419bd3476f0c1790"

PV = "1.0+git${SRCPV}"
S  = "${WORKDIR}/git"

# build-time dependencies
DEPENDS += "libqtappfw qtquickcontrols2"
DEPENDS += "libhomescreen qlibwindowmanager"

inherit qmake5 aglwgt
