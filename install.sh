#! /bin/bash

wget "https://download.passbolt.com/ce/installer/passbolt-repo-setup.ce.sh"
wget "https://github.com/passbolt/passbolt-dep-scripts/releases/latest/download/passbolt-ce-SHA512SUM.txt"
sha512sum -c passbolt-ce-SHA512SUM.txt && sudo bash ./passbolt-repo-setup.ce.sh || echo "Bad checksum. Aborting" && rm -f passbolt-repo-setup.ce.sh
apt install passbolt-ce-server
#https://www.howtoforge.com/install-and-configure-passbolt-password-manager-on-ubuntu-2004/ 
