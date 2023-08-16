################################################################################
#
# hatari
#
################################################################################

HATARI_VERSION = d358048f9cc48efb0d71cdb8c4000faa187d9e22
HATARI_SITE = https://github.com/hatari/hatari.git
HATARI_SITE_METHOD = git
HATARI_DEPENDENCIES = sdl2
HATARI_LICENSE = GPL-2.0

$(eval $(cmake-package))
