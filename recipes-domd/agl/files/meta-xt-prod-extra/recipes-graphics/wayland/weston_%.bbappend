FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"

# Only build IVI shell if not building for DomU:
# by default, the product is built with IVI shell for Weston
# which is not needed in case of DomU guest. Check XT_GUESTS_INSTALL
# variable and skip configuration of IVI shell in weston.ini for DomU.
# This is a workaround as display manager and backend are still
# built with ivi-extensions.
python __anonymous () {
    guests = (d.getVar("XT_GUESTS_INSTALL", True) or "").split()
    if "domu" not in guests :
        d.appendVar("EXTRA_OECONF", " --enable-ivi-shell")
}

SRC_URI_append = "\
    file://weston-seats.rules \
    file://0001-v4l2-renderer-Release-dma-buf-when-attaching-null-bu.patch \
"

SRCREV = "84709ddcbf1e94edae96038f530e9ddd855f707f"

FILES_${PN} += " \
    ${sysconfdir}/udev/rules.d/weston-seats.rules \
"
do_install_append() {
    install -d ${D}${sysconfdir}/udev/rules.d
    install -m 0644 ${WORKDIR}/weston-seats.rules ${D}${sysconfdir}/udev/rules.d/weston-seats.rules
}
