################################################################################
# Renesas R-Car
################################################################################
SRCREV_rcar = "c9f2181bb47cdf46be9f292cbdec5a58c7cf4141"

SRC_URI_append_rcar = " git://github.com/xen-troops/snd_be.git;protocol=https;branch=master"

EXTRA_OECMAKE_append_rcar = " -DWITH_DOC=OFF -DWITH_PULSE=ON"

RDEPENDS_${PN} = "libxenbe libconfig pulseaudio-server"
