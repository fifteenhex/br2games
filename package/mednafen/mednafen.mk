################################################################################
#
# mednafen
#
################################################################################

MEDNAFEN_VERSION = 1899500078169e787f86eb5302a3f35abdaa8764
MEDNAFEN_SITE = https://github.com/libretro-mirrors/mednafen-git.git
MEDNAFEN_SITE_METHOD = git
MEDNAFEN_LICENSE = gpl-2.0
MEDNAFEN_DEPENDS = sdl2 zlib
MEDNAFEN_CONF_OPTS = --with-libflac=no

$(eval $(autotools-package))
