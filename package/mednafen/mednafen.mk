################################################################################
#
# mednafen
#
################################################################################

MEDNAFEN_VERSION = 8157c0013d52afa77d41f692c4fd21c88602a79c
MEDNAFEN_SITE = https://github.com/libretro-mirrors/mednafen-git.git
MEDNAFEN_SITE_METHOD = git
MEDNAFEN_LICENSE = gpl-2.0
MEDNAFEN_DEPENDENCIES = sdl2 zlib
MEDNAFEN_CONF_OPTS = --with-libflac=no \
	--disable-apple2 \
	--disable-gb \
	--disable-gba \
	--disable-lynx \
	--disable-psx \
	--disable-ss \
	--disable-pce \
	--disable-pce-fast \
	--disable-pcfx \
	--disable-ngp \
	--disable-sms \
	--disable-snes \
	--disable-snes-faust \
	--disable-ssfplay \
	--disable-vb

#	--disable-fancy-scalers \
#  --enable-md             build with Sega Genesis/MegaDrive emulation
#                          [[default=yes]]
#  --enable-nes            build with Nintendo Entertainment System emulation
#                          [[default=yes]]
#                          [[default=yes]]
#                          amd64 aarch64* arm64* ppc64* powerpc64*]]
#  --enable-wswan          build with WonderSwan emulation [[default=yes]]
#  --enable-alsa           support the ALSA audio API [[default=yes]]
#  --disable-alsatest      Do not try to compile and run a test Alsa program
#  --enable-jack           support the JACK audio API [[default=yes]]

MEDNAFEN_CFLAGS = $(TARGET_CFLAGS) -O3

ifeq ($(BR2_GCC_ENABLE_LTO),y)
	MEDNAFEN_CFLAGS += -flto
endif

ifeq ($(BR2_ARM_CPU_HAS_NEON),y)
        MEDNAFEN_CFLAGS += -mfpu=neon
endif

MEDNAFEN_CONF_ENV += CFLAGS="$(MEDNAFEN_CFLAGS)"

$(eval $(autotools-package))
