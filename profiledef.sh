#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="omarchy"
iso_label="OMARCHY_$(date +%Y%m)"
iso_publisher="Omarchy <https://omarchy.org>"
iso_application="Omarchy"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/root/.zlogin"]="0:0:644"
  ["/usr/local/bin/omarchy-install"]="0:0:755"
  ["/usr/local/bin/omarchy-mirror-finder"]="0:0:755"
  ["/usr/local/bin/omarchy-network-setup"]="0:0:755"
)

