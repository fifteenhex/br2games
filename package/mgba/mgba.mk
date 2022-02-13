################################################################################
#
# mgba
#
################################################################################

MGBA_VERSION = 9cfa7120b186b125406a850d373d86e5be40a7bd
MGBA_SITE = https://github.com/mgba-emu/mgba.git
MGBA_SITE_METHOD = git
MGBA_DEPENDS = sdl
MGBA_LICENSE = MPL-2.0

$(eval $(cmake-package))
