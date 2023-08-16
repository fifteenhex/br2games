################################################################################
#
# dosbox-x
#
################################################################################

DOSBOXX_VERSION = 4327d58e75fe82829d594f2e43b32e7d7e78767c
DOSBOXX_SITE = https://github.com/joncampbell123/dosbox-x.git
DOSBOXX_SITE_METHOD = git
DOSBOXX_LICENSE = gpl-2.0
DOSBOXX_DEPENDENCIES = sdl2
DOSBOXX_AUTORECONF = YES

$(eval $(autotools-package))
