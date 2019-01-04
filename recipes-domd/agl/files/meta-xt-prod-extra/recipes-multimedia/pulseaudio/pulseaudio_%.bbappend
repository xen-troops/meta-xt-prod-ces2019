FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://default.pa"

do_install_append () {
    cp ${WORKDIR}/default.pa ${D}${sysconfdir}/pulse/default.pa
}
