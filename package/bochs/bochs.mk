################################################################################
#
# bochs
#
################################################################################

BOCHS_VERSION = 2.7
BOCHS_SITE = http://downloads.sourceforge.net/sourceforge/bochs/$(BOCHS_VERSION)
BOCHS_SOURCE = bochs-$(BOCHS_VERSION).tar.gz
BOCHS_LICENSE = lgpl-2.1
BOCHS_DEPENDS = sdl2
#BOCHS_AUTORECONF = YES
BOCHS_CONF_OPTS = --without-x11 --with-sdl2

define BOCHS_CONFIGURE_CMDS
	cd $(@D) && CPPFLAGS="$(BOCHS_CFLAGS)" \
		CFLAGS="$(BOCHS_CFLAGS)" \
		PATH=$(HOST_DIR)/bin:$(STAGING_DIR)/usr/bin:$(PATH)	\
		PKG_CONFIG_LIBDIR=$(TARGET_DIR)/usr/lib/pkgconfig/	\
		./configure						\
		--prefix=$(TARGET_DIR)/usr/				\
		--host=arm-buildroot-linux-gnueabihf			\
		$(BOCHS_CONF_OPTS)
endef

define BOCHS_BUILD_CMDS
	PATH=$(HOST_DIR)/bin:$(PATH) make -C $(@D) -j$(NCPUS)
endef

define BOCHS_INSTALL_TARGET_CMDS
	PATH=$(HOST_DIR)/bin:$(PATH) make -C $(@D) install
endef

$(eval $(generic-package))
