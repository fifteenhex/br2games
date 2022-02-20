################################################################################
#
# dosbox-x
#
################################################################################

DOSBOXX_VERSION = 504b33a498c980ffb2eb41b99e6464f935d779b8
DOSBOXX_SITE = https://github.com/joncampbell123/dosbox-x.git
DOSBOXX_SITE_METHOD = git
DOSBOXX_LICENSE = gpl-2.0
DOSBOXX_DEPENDS = sdl2
DOSBOXX_AUTORECONF = YES

$(eval $(autotools-package))
