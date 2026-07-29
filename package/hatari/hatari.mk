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

# Hatari's CMakeLists still declares an ancient cmake_minimum_required, which
# modern CMake rejects; bump the policy floor.
HATARI_CONF_OPTS = -DCMAKE_POLICY_VERSION_MINIMUM=3.5

$(eval $(cmake-package))
