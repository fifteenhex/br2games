################################################################################
#
# pcem
#
################################################################################

PCEM_VERSION = 5df4a1f84f40e5fa892320f83b72d2810725b70b
PCEM_SITE = https://github.com/sarah-walker-pcem/pcem.git
PCEM_SITE_METHOD = git
PCEM_DEPENDENCIES = sdl2 openal host-cmake
PCEM_LICENSE = GPL-2.0

$(eval $(meson-package))
