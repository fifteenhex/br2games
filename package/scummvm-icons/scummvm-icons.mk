################################################################################
#
# scummvm-icons
#
# Per-game icons from https://github.com/scummvm/scummvm-icons. The upstream
# icons are 512x512; we downscale them to 96x96 at build time (the full set is
# ~200MB) with host-imagemagick. They are named <engine>-<game>.png, matching
# the "<engine>:<game>" ids "scummvm --detect" reports, so lvshell can map a
# detected game to its icon.
#
################################################################################

SCUMMVM_ICONS_VERSION = f775b8f57079a34e939eef1a1e963f0c3912ddcc
SCUMMVM_ICONS_SITE = $(call github,scummvm,scummvm-icons,$(SCUMMVM_ICONS_VERSION))
SCUMMVM_ICONS_LICENSE = GPL-2.0
SCUMMVM_ICONS_LICENSE_FILES = LICENSE
SCUMMVM_ICONS_DEPENDENCIES = host-imagemagick

SCUMMVM_ICONS_SIZE = 192

define SCUMMVM_ICONS_BUILD_CMDS
	mkdir -p $(@D)/scaled
	for f in $(@D)/icons/*.png; do \
		$(HOST_DIR)/bin/convert "$$f" \
			-resize $(SCUMMVM_ICONS_SIZE)x$(SCUMMVM_ICONS_SIZE) \
			"$(@D)/scaled/$$(basename $$f)" || exit 1; \
	done
endef

define SCUMMVM_ICONS_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/scummvm/icons
	cp -a $(@D)/scaled/*.png $(TARGET_DIR)/usr/share/scummvm/icons/
endef

$(eval $(generic-package))
