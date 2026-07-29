################################################################################
#
# mgba
#
################################################################################

MGBA_VERSION = 0.10.5
MGBA_SITE = $(call github,mgba-emu,mgba,$(MGBA_VERSION))
MGBA_DEPENDENCIES = sdl2 zlib libpng
MGBA_LICENSE = MPL-2.0
MGBA_LICENSE_FILES = LICENSE
# BUILD_QT=OFF selects the SDL frontend. mGBA's CMakeLists still declares
# cmake_minimum_required(VERSION 3.1), which modern CMake rejects, so bump the
# policy floor.
MGBA_CONF_OPTS = \
	-DUSE_DEBUGGERS=OFF \
	-DUSE_GDB_STUB=OFF \
	-DBUILD_QT=OFF \
	-DUSE_SQLITE3=OFF \
	-DUSE_DISCORD_RPC=OFF \
	-DCMAKE_POLICY_VERSION_MINIMUM=3.5

$(eval $(cmake-package))
