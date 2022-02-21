################################################################################
#
# pcem
#
################################################################################

PCEM_VERSION = f220efc3a499727427d82b97777aa5b6ced15a90
PCEM_SITE = https://github.com/sarah-walker-pcem/pcem.git
PCEM_SITE_METHOD = git
PCEM_DEPENDENCIES = sdl2 openal host-cmake
PCEM_LICENSE = GPL-2.0

$(eval $(meson-package))
