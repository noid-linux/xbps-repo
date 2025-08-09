# Custom XBPS Repository

[![Build Packages](https://github.com/noid-linux/xbps-repo/actions/workflows/build-packages.yml/badge.svg)](https://github.com/noid-linux/xbps-repo/actions/workflows/build-packages.yml)

This repository contains custom XBPS packages.

> [!NOTE]
> Some packages in this repository are repackaged from official upstream binaries (e.g., Brave, LibreWolf, VSCodium) while others are built from source (e.g., Pika Backup). Check individual package templates in `srcpkgs/` for build details.

## Installation Instructions

The easiest way is by adding our repository, which includes pre-built binaries. You can do so by creating a new file and specifying the repository URL.

```bash
echo "repository=https://github.com/noid-linux/xbps-repo/releases/latest/download" | doas tee /etc/xbps.d/noid-xbps-repo.conf
```

Once you've created file above, proceed with installing any packages you want using xbps

```bash
doas xbps-install -Su
doas xbps-install brave librewolf vscodium ferdium obsidian onlyoffice freetube tutanota-desktop drawio-desktop sklauncher cinny-desktop PrismLauncher-Cracked intel-media-driver-nonfree proton-authenticator gruvbox-material-theme gruvbox-bibata-cursor-theme zap-rs ndpm nerd-fonts-cascadiacode
```

## License

This project is released under the MIT License. For more details, see the LICENSE file.
