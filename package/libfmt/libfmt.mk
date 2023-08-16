################################################################################
#
# libfmt
#
################################################################################

LIBFMT_VERSION = 6c845f57e5db589208ff0c2808238587cafafa82
LIBFMT_SITE = https://github.com/fmtlib/fmt.git
LIBFMT_SITE_METHOD = git
LIBFMT_LICENSE = BSD
LIBFMT_INSTALL_STAGING = YES

$(eval $(cmake-package))
