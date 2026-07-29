################################################################################
#
# emutos
#
# Free (GPL) Atari TOS replacement ROM, installed as Hatari's default TOS
# image so the ST emulator can boot with no copyrighted firmware.
#
################################################################################

EMUTOS_VERSION = 1.2.1
EMUTOS_SITE = https://downloads.sourceforge.net/project/emutos/emutos/$(EMUTOS_VERSION)
EMUTOS_SOURCE = emutos-1024k-$(EMUTOS_VERSION).zip
EMUTOS_LICENSE = GPL-2.0+
EMUTOS_LICENSE_FILES = emutos-1024k-$(EMUTOS_VERSION)/doc/license.txt

define EMUTOS_EXTRACT_CMDS
	$(UNZIP) -d $(@D) $(EMUTOS_DL_DIR)/$(EMUTOS_SOURCE)
endef

define EMUTOS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0644 -D $(@D)/emutos-1024k-$(EMUTOS_VERSION)/etos1024k.img \
		$(TARGET_DIR)/usr/share/hatari/tos.img
endef

$(eval $(generic-package))
