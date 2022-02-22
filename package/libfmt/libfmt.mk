################################################################################
#
# libfmt
#
################################################################################

LIBFMT_VERSION = 1ba69fb5a183ed0808123d849560abd19063f770
LIBFMT_SITE = https://github.com/fmtlib/fmt.git
LIBFMT_SITE_METHOD = git
LIBFMT_LICENSE = BSD
LIBFMT_INSTALL_STAGING = YES

$(eval $(cmake-package))
