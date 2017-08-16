GLUON_SITE_PACKAGES := \
    gluon-mesh-batman-adv-15 \
    gluon-respondd \
    gluon-autoupdater \
    gluon-config-mode-core \
    gluon-config-mode-autoupdater \
    gluon-config-mode-hostname \
    gluon-config-mode-tunneldigger \
    gluon-config-mode-geo-location \
    gluon-config-mode-contact-info \
    gluon-ebtables-filter-multicast \
    gluon-ebtables-filter-ra-dhcp \
    gluon-neighbour-info \
    gluon-luci-admin \
    gluon-luci-autoupdater \
    gluon-luci-portconfig \
    gluon-luci-wifi-config \
    gluon-next-node \
    gluon-mesh-vpn-tunneldigger \
    gluon-radvd \
    gluon-status-page \
    gluon-setup-mode \
    gluon-tunneldigger-watchdog \
    gluon-banner \
    gluon-web-private-wifi \
    iwinfo \
    iptables \
    haveged
DEFAULT_GLUON_RELEASE := l2tp-2016.2.7-0.9.5+exp$(shell date '+%Y%m%d')
# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)
# Languages to include
GLUON_LANGS ?= en de
GLUON_ATH10K_MESH ?= ibss
GLUON_REGION ?= eu
