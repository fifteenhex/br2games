################################################################################
#
# scummvm
#
################################################################################

SCUMMVM_VERSION = 0541275c2761b450b2fc8c5ffbc6911b26f91394
SCUMMVM_SITE = https://github.com/fifteenhex/scummvm.git
SCUMMVM_SITE_METHOD = git
SCUMMVM_LICENSE = GPL-3.0

# ignore the -Os option, this is performance critical
SCUMMVM_CFLAGS = $(TARGET_CFLAGS) -O3

ifeq ($(BR2_GCC_ENABLE_LTO),y)
SCUMMVM_CFLAGS += -flto
endif

ifeq ($(BR2_ARM_CPU_HAS_NEON),y)
SCUMMVM_CFLAGS += -mfpu=neon
endif

ifeq ($(BR2_PACKAGE_SDL2),y)
SCUMMVM_DEPENDENCIES = sdl2
else
SCUMMVM_DEPENDENCIES = sdl
endif

SCUMMVM_STATIC_ENGINES := scumm

ifeq ($(BR2_PACKAGE_SCUMMVM_ENGINE_SCUMMV7V8),y)
SCUMMVM_ENGINES := scumm-7-8
endif

SCUMMVM_CONFIG_OPTS =				\
		--disable-cloud			\
		--disable-lua			\
		--disable-debug			\
		--disable-mt32emu		\
		--disable-nuked-opl		\
		--disable-opengl-game		\
		--disable-opengl-game-classic	\
		--disable-opengl-game-shaders	\
		--no-builtin-resources		\
		--disable-detection-full	\
		--disable-all-engines		\
		--enable-release


ifeq ($(BR2_PACKAGE_SCUMMVM_DISABLE_SCALERS),y)
SCUMMVM_CONFIG_OPTS += --disable-scalers
endif

define SCUMMVM_CONFIGURE_CMDS
	cd $(@D) && \
		CXX="$(TARGET_CXX)" \
		CPPFLAGS="$(SCUMMVM_CFLAGS)" \
		CFLAGS="$(SCUMMVM_CFLAGS)" \
		PATH=$(HOST_DIR)/bin:$(PATH) \
		PKG_CONFIG_LIBDIR=$(TARGET_DIR)/usr/lib/pkgconfig/	\
		./configure						\
		--with-sdl-prefix=$(STAGING_DIR)/usr/bin/		\
		--prefix=/usr/						\
		--backend=sdl						\
		--host=$(GNU_TARGET_NAME)				\
		$(SCUMMVM_CONFIG_OPTS)					\
		--enable-engine-static=$(SCUMMVM_STATIC_ENGINES)	\
		--enable-engine=$(SCUMMVM_ENGINES)
endef

define SCUMMVM_BUILD_CMDS
	PATH=$(HOST_DIR)/bin:$(PATH) make -C $(@D) -j$(NCPUS)
endef

define SCUMMVM_INSTALL_TARGET_CMDS
	PATH=$(HOST_DIR)/bin:$(PATH) make -C $(@D) install DESTDIR=$(TARGET_DIR)
	rm -r $(TARGET_DIR)/usr/share/doc/scummvm

endef

$(eval $(generic-package))
