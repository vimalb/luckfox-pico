GPHOTO2_VERSION = 2.5.27
GPHOTO2_SOURCE = gphoto2-$(GPHOTO2_VERSION).tar.xz
GPHOTO2_SITE = https://github.com/gphoto/gphoto2/releases/download/v$(GPHOTO2_VERSION)

GPHOTO2_LICENSE_FILES = COPYING
GPHOTO2_INSTALL_STAGING = YES

GPHOTO2_DEPENDENCIES = libgphoto2 popt

GPHOTO2_CONF_ENV = POPT_CFLAGS="-I$(STAGING_DIR)/usr/include" POPT_LIBS="-L$(STAGING_DIR)/usr -lpopt"

$(eval $(autotools-package))

