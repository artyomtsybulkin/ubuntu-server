# Installation tips
# 1. Use LTS version of Ubuntu
# 2. Choose langinguage and keyboard layout: English (US)
# 3. Type of installation: Ubuntu Server (minimized)
# 4. Install OpenSSH server - Enable
# 5. Disable LVM
# 6. Change filesystem to XFS instead of EXT4

# Post-installation steps
apt update -y && apt upgrade -y

# Fix this issue:
# debconf: unable to initialize frontend: Dialog
# debconf: (No usable dialog-like program is installed, so the dialog based frontend cannot be used. at /usr/share/perl5/Debconf/FrontEnd/Dialog.pm line 79.)
# debconf: falling back to frontend: Readline
apt install -y dialog

# Install base packages
apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    software-properties-common \
    net-tools \
    htop \
    git \
    vim \
    wget \
    unzip \
    zip