################################################################################
#
# UHD driver for USRP hardware (ettus research)
#
################################################################################

#UHD_VERSION = 003_009_005
UHD_VERSION = 003_010_002_000 
UHD_SOURCE = /release_$(UHD_VERSION).tar.gz
UHD_SITE = https://github.com/EttusResearch/uhd/archive
UHD_INSTALL_STAGING = YES
UHD_INSTALL_TARGET = YES

UHD_CONF_OPTS += -DENABLE_EXAMPLES=ON
UHD_CONF_OPTS += -DENABLE_USB=ON
UHD_CONF_OPTS += -DENABLE_MANUAL=ON
UHD_CONF_OPTS += -DENABLE_DOXYGEN=OFF
UHD_CONF_OPTS += -DENABLE_UTILS=ON
UHD_CONF_OPTS += -DENABLE_TESTS=ON
UHD_CONF_OPTS += -DENABLE_LIBUHD=ON
UHD_CONF_OPTS += -DENABLE_UHD=TRUE


#UHD_DEPENDENCIES = libglib2 host-pkgconf python-mako libusb boost python
UHD_DEPENDENCIES = python libusb libglib2 python boost libusb
UHD_DEPENDENCIES += host-python-mako host-pkgconf 
#UHD_DEPENDENCIES += host-python-requests 
#UHD_DEPENDENCIES += host-python-certifi host-python-chardet host-python-idna 
#UHD_DEPENDENCIES += host-python-urllib3 


#=======================
#required by urllib3
#=======================
#pyOpenSSL>=0.14',
#'cryptography>=1.3.4',
#idna>=2.0.0',
#'certifi',
#"ipaddress",
#=========================
#UHD_DEPENDENCIES += host-python-pyopenssl host-python-cryptography host-python-ipaddress


#cryptography need
#UHD_DEPENDENCIES += host-python-cffi


UHD_SUBDIR = host
UHD_SUPPORTS_IN_SOURCE_BUILD = NO

$(eval $(cmake-package))

