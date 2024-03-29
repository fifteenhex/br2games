################################################################################
#
# fake-08
#
################################################################################

FAKE08_VERSION = 5af9cb8a59c823a41c4195044ecfa7d03f123150
FAKE08_SITE = git@github.com:fifteenhex/fake-08.git
FAKE08_SITE_METHOD = git
FAKE08_GIT_SUBMODULES = YES
FAKE08_DEPENDENCIES = sdl2
FAKE08_LICENSE = MIT

define FAKE08_CONFIGURE_CMDS
endef

define FAKE08_BUILD_CMDS
	make -C $(@D) CXX=$(TARGET_CXX) sdl2
endef

define FAKE08_INSTALL_TARGET_CMDS
	$(INSTALL) -d -m 0755 $(TARGET_DIR)/usr/share/pico-8/
	$(INSTALL) -m 0644 $(@D)/carts/*.p8 $(TARGET_DIR)/usr/share/pico-8/
	$(INSTALL) -d -m 0755 $(TARGET_DIR)/usr/games/
	$(INSTALL) -m 0755 $(@D)/platform/SDL2Desktop/FAKE08 $(TARGET_DIR)/usr/games/
endef

$(eval $(generic-package))
