#!/bin/sh

xbps-install -Syu
xbps-install -Syu
xbps-install -Sy python python-devel libressl-devel base-devel python-pip git-all

pip install ansible netaddr

ansible-pull --accept-host-key -U https://github.com/TexSAW/texsaw_config.git vm.yml
