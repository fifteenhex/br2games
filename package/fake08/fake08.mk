################################################################################
#
# fake-08
#
################################################################################

FAKE08_VERSION = 49f4eb1bd465639d36ef6657e038da892399c7d9
FAKE08_SITE = https://github.com/jtothebell/fake-08.git
FAKE08_SITE_METHOD = git
FAKE08_GIT_SUBMODULES = YES
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
