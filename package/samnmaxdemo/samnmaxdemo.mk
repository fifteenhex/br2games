################################################################################
#
# Sam & Max Hit the Road Demo
#
################################################################################

SAMNMAXDEMO_VERSION = 1
SAMNMAXDEMO_SITE = https://downloads.scummvm.org/frs/demos/scumm
SAMNMAXDEMO_SOURCE = samnmax-dos-cd-demo-en.zip
SAMNMAXDEMO_LICENSE = COMMERCIAL!!

define SAMNMAXDEMO_EXTRACT_CMDS
        $(UNZIP) -d $(@D) $(SAMNMAXDEMO_DL_DIR)/$($(PKG)_SOURCE)
endef

define SAMNMAXDEMO_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0644 -D $(@D)/SAMDEMO.000 \
		$(TARGET_DIR)/usr/share/games/scummvm/samnmaxdemo/SAMDEMO.000
	$(INSTALL) -m 0644 -D $(@D)/SAMDEMO.001 \
		$(TARGET_DIR)/usr/share/games/scummvm/samnmaxdemo/SAMDEMO.001
	$(INSTALL) -m 0644 -D $(@D)/MONSTER.SOU \
		$(TARGET_DIR)/usr/share/games/scummvm/samnmaxdemo/MONSTER.SOU
endef

$(eval $(generic-package))
