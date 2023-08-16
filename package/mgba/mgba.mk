################################################################################
#
# mgba
#
################################################################################

MGBA_VERSION = f637b5b1e8f9759495463677532309e307baf157
MGBA_SITE = https://github.com/mgba-emu/mgba.git
MGBA_SITE_METHOD = git
MGBA_DEPENDENCIES = sdl
MGBA_LICENSE = MPL-2.0
MGBA_CONF_OPTS = -DUSE_DEBUGGERS=OFF -DUSE_GDB_STUB=OFF -DBUILD_QT=OFF -DUSE_SQLITE3=OFF -DUSE_DISCORD_RPC=OFF

$(eval $(cmake-package))
