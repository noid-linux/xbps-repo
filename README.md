# Custom XBPS Repository
[![Build Packages](https://github.com/ndpm13/xbps-repo/actions/workflows/build-packages.yml/badge.svg)](https://github.com/ndpm13/xbps-repo/actions/workflows/build-packages.yml)

This repository contains custom XBPS packages.

## Installation Instructions

The easiest way is by adding our repository, which includes pre-built binaries. You can do so by creating a new file and specifying the repository URL.

```bash
echo "repository=https://github.com/ndpm13/xbps-repo/releases/latest/download" | doas tee /etc/xbps.d/ndpm13-xbps-repo.conf
```

Once you've created file above, proceed with installing any packages you want using xbps

```bash
doas xbps-install -Su
doas xbps-install brave librewolf vscodium ferdium obsidian onlyoffice freetube tutanota-desktop
```

## License

This project is released under the MIT License. For more details, see the LICENSE file.
