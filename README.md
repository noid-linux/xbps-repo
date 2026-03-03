# Custom XBPS Repository

[![Build Packages](https://github.com/noid-linux/xbps-repo/actions/workflows/build.yaml/badge.svg)](https://github.com/noid-linux/xbps-repo/actions/workflows/build.yaml) [![Build Selected XBPS Package](https://github.com/noid-linux/xbps-repo/actions/workflows/build-selected-packages.yml/badge.svg)](https://github.com/noid-linux/xbps-repo/actions/workflows/build-selected-packages.yml) [![Test Build XBPS Packages](https://github.com/noid-linux/xbps-repo/actions/workflows/test-build-packages.yml/badge.svg)](https://github.com/noid-linux/xbps-repo/actions/workflows/test-build-packages.yml)

This repository contains custom XBPS packages.

> [!NOTE]
> Some packages in this repository are repackaged from official upstream binaries (e.g., Brave, LibreWolf, VSCodium) while others are built from source (e.g., Ferdium). Check individual package templates in `srcpkgs/` for build details.

## Installation Instructions

The easiest way is by adding our repository, which includes pre-built binaries. You can do so by creating a new file and specifying the repository URL.

```bash
echo "repository=https://github.com/noid-linux/xbps-repo/releases/latest/download" | sudo tee /etc/xbps.d/noid-xbps-repo.conf
```

Once you've created file above, proceed with installing any packages you want using xbps

```bash
sudo xbps-install -Su
sudo xbps-install brave librewolf vscodium obsidian intel-media-driver-nonfree
```

## Available Packages

See [PACKAGES.md](/PACKAGES.md) for the full list of available packages.

## License

This project is released under the MIT License. For more details, see the LICENSE file.
