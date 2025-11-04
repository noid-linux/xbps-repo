# Custom XBPS Repository

[![Build Selected XBPS Package](https://github.com/noid-linux/xbps-repo/actions/workflows/build-selected-packages.yml/badge.svg)](https://github.com/noid-linux/xbps-repo/actions/workflows/build-selected-packages.yml) [![Build All XBPS Packages](https://github.com/noid-linux/xbps-repo/actions/workflows/build-all-packages.yml/badge.svg)](https://github.com/noid-linux/xbps-repo/actions/workflows/build-all-packages.yml) [![Test Build XBPS Packages](https://github.com/noid-linux/xbps-repo/actions/workflows/test-build-packages.yml/badge.svg)](https://github.com/noid-linux/xbps-repo/actions/workflows/test-build-packages.yml)

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
doas xbps-install brave librewolf vscodium obsidian intel-media-driver-nonfree
```

## Available Packages

| Package                          | Version              | Compiled |
| -------------------------------- | -------------------- | -------- |
| brave                            | 1.84.132             | ❌       |
| calamares                        | 3.4.0                | ✅       |
| cinny-desktop                    | 4.10.1               | ❌       |
| drawio-desktop                   | 28.2.7               | ❌       |
| discord                          | 0.0.104              | ❌       |
| ferdium                          | 7.1.1                | ✅       |
| freetube                         | 0.23.12              | ❌       |
| grayjay                          | 12                   | ❌       |
| gruvbox-bibata-cursor-theme      | /                    | ❌       |
| gruvbox-material-theme           | /                    | ❌       |
| intel-media-driver-nonfree       | 25.3.4               | ✅       |
| intel-media-driver-nonfree-devel | /                    | ✅       |
| librewolf                        | 144.0.2              | ❌       |
| lutgen-cli                       | 1.0.1                | ✅       |
| lutgen-studio                    | 0.3.0                | ✅       |
| ndpm                             | 0.1.3                | ✅       |
| nerd-fonts-cascadiacode          | 3.4.0                | ❌       |
| noid-base-files                  | 0.1                  | /        |
| noid-welcome                     | 0.2.1                | ✅       |
| nyancat                          | 1.2.1                | ✅       |
| nwm                              | 1                    | ✅       |
| obsidian                         | 1.9.14               | ❌       |
| onlyoffice                       | 9.1.0                | ❌       |
| pika-backup                      | 0.7.5                | ✅       |
| PrismLauncher-Cracked            | 9.4                  | ✅       |
| proton-authenticator             | 1.1.4                | ❌       |
| sbm-rs                           | 0.1.0                | ✅       |
| spotify-client                   | 1.2.63.394.g126b0d89 | ❌       |
| tutanota-desktop                 | 310.251016.1         | ❌       |
| vscodium                         | 1.105.17075          | ❌       |
| webapp-manager                   | 1.4.2                | ❌       |
| zap-rs                           | 0.3.0                | ✅       |
| zen-browser                      | 1.17.4b              | ❌       |

## License

This project is released under the MIT License. For more details, see the LICENSE file.
