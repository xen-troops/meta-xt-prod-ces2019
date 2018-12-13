require ../agl/inc/domd-agl-image.inc

SRC_URI_rcar_append = " \
    repo://github.com/xen-troops/manifests;protocol=https;branch=master;manifest=prod_ces2019/domd.xml;scmdata=keep \
"
