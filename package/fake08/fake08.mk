################################################################################
#
# fake-08
#
################################################################################

FAKE08_VERSION = af8d2303d6d623f0859f3063e533a8db275e705d
FAKE08_SITE = https://github.com/jtothebell/fake-08.git
FAKE08_SITE_METHOD = git
FAKE08_DEPENDENCIES = sdl2
FAKE08_LICENSE = MIT

define FAKE08_CONFIGURE_CMDS
endef

define FAKE08_BUILD_CMDS
	make -C $(@D) sdl2
endef

define FAKE08_INSTALL_TARGET_CMDS
endef

$(eval $(generic-package))
