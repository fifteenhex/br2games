################################################################################
#
# lvshell
#
################################################################################

LVSHELL_VERSION = da054becc9c1e32be3865ea9c0e63ebd9e0b7769
LVSHELL_SITE = https://github.com/fifteenhex/lvshell.git
LVSHELL_SITE_METHOD = git
LVSHELL_DEPENDS = sdl2
LVSHELL_LICENSE = GPL-3.0
LVSHELL_GIT_SUBMODULES = YES

ifeq ($(BR2_GCC_ENABLE_LTO),y)
LVSHELL_CFLAGS += -flto
endif

ifeq ($(BR2_ARM_CPU_HAS_NEON),y)
LVSHELL_CFLAGS += -mfpu=neon
endif

define LVSHELL_INSTALL_INIT_SYSV
	$(INSTALL) -m 0755 -D $(BR2_EXTERNAL_GAMES_PATH)/package/lvshell/S45lvshell $(TARGET_DIR)/etc/init.d/S45lvshell
endef

$(eval $(cmake-package))
