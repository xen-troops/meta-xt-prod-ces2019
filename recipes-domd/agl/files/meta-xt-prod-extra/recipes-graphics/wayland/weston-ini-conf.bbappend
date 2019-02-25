FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

# Remove KingFisher's setup
SRC_URI_remove = "file://kingfisher_output.cfg"

# Remove default rotation for HDMI-A-1 which is not needed for
# Salvator-X M3
SRC_URI_remove = "file://hdmi-a-1-270.cfg"

SRC_URI_append_salvator-xs-h3-xt += "\
    file://hdmi-a-1-on-270.cfg \
    file://hdmi-2-on.cfg \
    file://vga-1-off.cfg \
    file://lvds-1-off.cfg \
    file://v4l2.cfg \
"

SRC_URI_append_salvator-x-h3-4x2g-xt += "\
    file://hdmi-a-1-on-270.cfg \
    file://hdmi-2-on.cfg \
    file://vga-1-off.cfg \
    file://lvds-1-off.cfg \
    file://v4l2.cfg \
"

SRC_URI_append_salvator-x-m3-xt += "\
    file://hdmi-a-1-on.cfg \
    file://vga-1-on.cfg \
    file://lvds-1-off.cfg \
    file://v4l2.cfg \
"
