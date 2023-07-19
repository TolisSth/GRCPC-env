# Simplify the master branch: *1st Iteration*
The branch over the time aims to provide a barebone system with only the necessities of the Contest.

### Key Features:
* Programming Languages: C, CPP, Java, Python3
* IDES: Vim, Vscode, Intellij, PyCharm
* Access to Language Documentation: STL, Java, Python3
* Restricted Network Connections
* Fully Customizable and automated process for building consistent images
* Lightweight Destkop Environment

### Build Requirements:
* Linux Host system
* Qemu
* Ansible

### Building the Image:
1. Dependencies:
  * Install required packages:
  ```
  sudo apt-get install qemu-system-x86 genisoimage bsdtar ansible # Debian based Distros
  sudo pacman -S qemu-system-x86 cdrtools libarchive ansible # Arch Based Distros

  ```
  * Download the 64 bit version of Ubuntu 20.04.<1 or 2> Server inside the cloned directory:
  ```
  curl -O https://mu.releases.ubuntu.com/22.04.1/ubuntu-22.04.1-live-server-amd64.iso
  curl -O https://releases.ubuntu.com/jammy/ubuntu-22.04.2-live-server-amd64.iso
  ```
2. Create ssh-keys: `bash ./secrets/gen-secrets.sh` and place the keys correctly using `bash ./fetch-secrets.sh`
3. Execute `sudo bash ./create_baseimg.sh` *(Optional Arguments: `-s 28500M` for 32GB images or `--no-usb` to remove an extra fat32 partition for easy transfer of files.)*. The **AutoInstall** feature of Ubuntu server Images is used to autoinstall the system based on the configuration files found on `/configs/`
