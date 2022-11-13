################################################################################
#
# cppquake
#
################################################################################

CPPQUAKE_VERSION = 44d859ff0b5f371a343b47540cf09d0e173631f2
CPPQUAKE_SITE = https://github.com/linardsbi/cppquake.git
CPPQUAKE_SITE_METHOD = git
CPPQUAKE_DEPENDENCIES = sdl2 libfmt glm
CPPQUAKE_LICENSE = GPL-2.0
#CPPQUAKE_CONF_OPTS = -DUSE_DEBUGGERS=OFF -DUSE_GDB_STUB=OFF -DBUILD_QT=OFF -DUSE_SQLITE3=OFF -DUSE_DISCORD_RPC=OFF

$(eval $(cmake-package))
