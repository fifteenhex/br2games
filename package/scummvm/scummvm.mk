################################################################################
#
# scummvm
#
################################################################################

SCUMMVM_VERSION = v2.5.1
SCUMMVM_SOURCE = $(SCUMMVM_VERSION).tar.gz
SCUMMVM_SITE = https://github.com/scummvm/scummvm/archive/refs/tags
SCUMMVM_LICENSE = GPL-3.0

ifeq ($(BR2_PACKAGE_SDL2),y)
SCUMMVM_DEPENDENCIES = sdl2
else
SCUMMVM_DEPENDENCIES = sdl
endif

define SCUMMVM_CONFIGURE_CMDS
	cd $(@D) && PATH=$(HOST_DIR)/bin:$(PATH)			\
		PKG_CONFIG_LIBDIR=$(TARGET_DIR)/usr/lib/pkgconfig/	\
		./configure						\
		--with-sdl-prefix=$(STAGING_DIR)/usr/bin/		\
		--prefix=$(TARGET_DIR)/usr/				\
		--backend=sdl						\
		--host=arm-buildroot-linux-gnueabihf			\
		--disable-cloud						\
		--disable-lua						\
		--disable-debug						\
		--disable-mt32emu					\
		--disable-all-engines					\
		--disable-nuked-opl					\
		--no-builtin-resources					\
		--enable-release					\
		--enable-engine=scumm
endef

define SCUMMVM_BUILD_CMDS
	PATH=$(HOST_DIR)/bin:$(PATH) make -C $(@D) -j$(NCPUS)
endef

define SCUMMVM_INSTALL_TARGET_CMDS
	PATH=$(HOST_DIR)/bin:$(PATH) make -C $(@D) install
	rm -r $(TARGET_DIR)/usr/share/doc/scummvm

endef

$(eval $(generic-package))

