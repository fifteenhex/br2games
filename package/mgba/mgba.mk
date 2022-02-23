################################################################################
#
# mgba
#
################################################################################

MGBA_VERSION = 9cfa7120b186b125406a850d373d86e5be40a7bd
MGBA_SITE = https://github.com/mgba-emu/mgba.git
MGBA_SITE_METHOD = git
MGBA_DEPENDENCIES = sdl
MGBA_LICENSE = MPL-2.0
MGBA_CONF_OPTS = -DUSE_DEBUGGERS=OFF -DUSE_GDB_STUB=OFF -DBUILD_QT=OFF -DUSE_SQLITE3=OFF -DUSE_DISCORD_RPC=OFF

$(eval $(cmake-package))
