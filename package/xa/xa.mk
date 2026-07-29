################################################################################
#
# xa
#
################################################################################

XA_VERSION = 2.4.1
XA_SITE = https://www.floodgap.com/retrotech/xa/dists
XA_SOURCE = xa-$(XA_VERSION).tar.gz
XA_LICENSE = GPL-2.0
XA_LICENSE_FILES = COPYING

define HOST_XA_BUILD_CMDS
	$(MAKE) -C $(@D)
endef

define HOST_XA_INSTALL_CMDS
	$(INSTALL) -D -m 0755 $(@D)/xa $(HOST_DIR)/usr/bin
endef

$(eval $(generic-package))
$(eval $(host-generic-package))
