################################################################################
#
# CDOGSSDL
#
################################################################################

CDOGSSDL_VERSION = c71ba65059b265450b1951bf7305228f2bbd2bf3
CDOGSSDL_SITE = https://github.com/cxong/cdogs-sdl.git
CDOGSSDL_SITE_METHOD = git
CDOGSSDL_DEPENDENCIES = sdl2 sdl2_image sdl2_mixer
CDOGSSDL_LICENSE = GPL-2.0

$(eval $(cmake-package))
