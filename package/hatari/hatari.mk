################################################################################
#
# hatari
#
################################################################################

HATARI_VERSION = 0b353ce12d8e78a812cb204682a20f2e260957a8
HATARI_SITE = https://github.com/hatari/hatari.git
HATARI_SITE_METHOD = git
HATARI_DEPENDENCIES = sdl2
HATARI_LICENSE = GPL-2.0

$(eval $(cmake-package))
