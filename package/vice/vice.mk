################################################################################
#
# vice
#
################################################################################

VICE_VERSION = 3.6.1
VICE_SITE = http://downloads.sourceforge.net/sourceforge/vice-emu
VICE_SOURCE = vice-$(VICE_VERSION).tar.gz
VICE_LICENSE = gpl-2.0
VICE_DEPENDENCIES = sdl2
VICE_AUTORECONF = YES

$(eval $(autotools-package))
