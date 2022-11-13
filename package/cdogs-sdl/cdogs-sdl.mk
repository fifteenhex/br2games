################################################################################
#
# CDOGSSDL
#
################################################################################

CDOGSSDL_VERSION = 82a196d8f0d1a9563de61aa259ed51e52c90b4b2
CDOGSSDL_SITE = https://github.com/cxong/cdogs-sdl.git
CDOGSSDL_SITE_METHOD = git
CDOGSSDL_DEPENDENCIES = sdl2
CDOGSSDL_LICENSE = GPL-2.0

$(eval $(cmake-package))
