################################################################################
#
# retro-game-console-icons
#
# Console/system icons for the lvshell menu, from KyleBing's
# retro-game-console-icons. We take the Miyoo 3x set (396 px), downscale it to
# 128x128 with host-imagemagick and install each as <system>.png (dropping the
# upstream "@396" suffix) so lvshell can map a system to its icon by name.
#
################################################################################

RETRO_GAME_CONSOLE_ICONS_VERSION = 21e4af37d2de97011465f0e6b0f08a97cd7a2f73
RETRO_GAME_CONSOLE_ICONS_SITE = $(call github,KyleBing,retro-game-console-icons,$(RETRO_GAME_CONSOLE_ICONS_VERSION))
RETRO_GAME_CONSOLE_ICONS_LICENSE = GPL-3.0
RETRO_GAME_CONSOLE_ICONS_LICENSE_FILES = LICENSE
RETRO_GAME_CONSOLE_ICONS_DEPENDENCIES = host-imagemagick

RETRO_GAME_CONSOLE_ICONS_SIZE = 192

define RETRO_GAME_CONSOLE_ICONS_BUILD_CMDS
	mkdir -p $(@D)/scaled
	cd $(@D)/series_miyoo/396w@3x && for f in *.png; do \
		$(HOST_DIR)/bin/convert "$$f" \
			-resize $(RETRO_GAME_CONSOLE_ICONS_SIZE)x$(RETRO_GAME_CONSOLE_ICONS_SIZE) \
			"$(@D)/scaled/$${f%@396.png}.png" || exit 1; \
	done
endef

define RETRO_GAME_CONSOLE_ICONS_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/console-icons
	cp -a $(@D)/scaled/*.png $(TARGET_DIR)/usr/share/console-icons/
endef

$(eval $(generic-package))
