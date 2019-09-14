##	gluon site.mk makefile example

##	GLUON_FEATURES
#		Specify Gluon features/packages to enable;
#		Gluon will automatically enable a set of packages
#		depending on the combination of features listed

## GLUON_FEATURES := \
#	autoupdater \
#	ebtables-filter-multicast \
#	ebtables-filter-ra-dhcp \
#	mesh-batman-adv-15 \
#	mesh-vpn-fastd \
#	radvd \
#	respondd \
#	status-page \
#	web-advanced \
#	web-wizard

##	GLUON_SITE_PACKAGES
#		Specify additional Gluon/LEDE packages to include here;
#		A minus sign may be prepended to remove a packages from the
#		selection that would be enabled by default or due to the
#		chosen feature flags

GLUON_SITE_PACKAGES := \
        gluon-mesh-batman-adv-15 \
        gluon-respondd \
        gluon-autoupdater \
        gluon-config-mode-autoupdater \
        gluon-config-mode-contact-info \
        gluon-config-mode-geo-location \
        gluon-config-mode-hostname \
        gluon-config-mode-core \
        gluon-ebtables-filter-multicast \
        gluon-ebtables-limit-arp \
        gluon-radv-filterd \
        respondd-module-airtime \
        gluon-web-admin \
        gluon-web-autoupdater \
        gluon-web-wifi-config \
        gluon-web-network \
        gluon-status-page \
        haveged \
        iptables \
        iwinfo \
        gluon-web-private-wifi \
        gluon-config-mode-mesh-vpn \
        gluon-mesh-vpn-fastd

##	DEFAULT_GLUON_RELEASE
#		version string to use for images
#		gluon relies on
#			opkg compare-versions "$1" '>>' "$2"
#		to decide if a version is newer or not.

DEFAULT_GLUON_RELEASE := fastd-2018.2.3-2.0.2+exp$(shell date '+%Y%m%d')

# Variables set with ?= can be overwritten from the command line

##	GLUON_RELEASE
#		call make with custom GLUON_RELEASE flag, to use your own release version scheme.
#		e.g.:
#			$ make images GLUON_RELEASE=23.42+5
#		would generate images named like this:
#			gluon-ff%site_code%-23.42+5-%router_model%.bin

GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# Default priority for updates.
GLUON_PRIORITY ?= 0

# Region code required for some images; supported values: us eu
GLUON_REGION ?= eu

# Languages to include
GLUON_LANGS ?= en de
