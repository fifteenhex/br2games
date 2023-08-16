################################################################################
#
# wipeout-rewrite
#
################################################################################

WIPEOUT_REWRITE_VERSION = b2e3ae80dd3e5f152cdf35bf58473b8d6cef0ef4
WIPEOUT_REWRITE_SITE = https://github.com/phoboslab/wipeout-rewrite.git
WIPEOUT_REWRITE_SITE_METHOD = git
WIPEOUT_REWRITE_DEPENDENCIES = sdl2
WIPEOUT_REWRITE_LICENSE = DODGYAF

define WIPEOUT_REWRITE_CONFIGURE_CMDS
endef

define WIPEOUT_REWRITE_BUILD_CMDS
	make -C $(@D) CXX=$(TARGET_CXX) sdl
endef

#define WIPEOUT_REWRITE_INSTALL_TARGET_CMDS
#endef

$(eval $(generic-package))
