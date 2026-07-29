################################################################################
#
# vice
#
################################################################################

VICE_VERSION = 3.10
VICE_SITE = http://downloads.sourceforge.net/sourceforge/vice-emu
VICE_SOURCE = vice-$(VICE_VERSION).tar.gz
VICE_LICENSE = GPL-2.0
VICE_LICENSE_FILES = COPYING
VICE_DEPENDENCIES = sdl2 sdl2_image host-dos2unix host-xa
VICE_AUTORECONF = YES
VICE_CONF_OPTS = --without-pulse --without-png --without-libcurl --enable-sdl2ui

$(eval $(autotools-package))
