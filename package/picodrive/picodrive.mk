################################################################################
#
# picodrive
#
################################################################################

PICODRIVE_VERSION = 3672cad8d0efecdf7a6502f93ee70adb7d91f677
PICODRIVE_SITE = https://github.com/notaz/picodrive.git
PICODRIVE_SITE_METHOD = git
PICODRIVE_GIT_SUBMODULES = YES
PICODRIVE_DEPENDS = sdl libpng
PICODRIVE_LICENSE = custom

define PICODRIVE_CONFIGURE_CMDS
	cd $(@D) && PATH=$(HOST_DIR)/bin:$(STAGING_DIR)/usr/bin/:$(PATH) CROSS_COMPILE=arm-buildroot-linux-gnueabihf- ./configure
endef

define PICODRIVE_BUILD_CMDS
	PATH=$(HOST_DIR)/bin:$(PATH) make -C $(@D) -j$(NCPUS)
endef

define PICODRIVE_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/games/picodrive/
	cp $(@D)/PicoDrive $(TARGET_DIR)/usr/games/picodrive/
	cp -a $(@D)/./platform/pandora/skin $(TARGET_DIR)/usr/games/picodrive/
endef

$(eval $(generic-package))
