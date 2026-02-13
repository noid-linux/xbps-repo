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

| Package                          | Version      | Compiled |
| -------------------------------- | ------------ | -------- |
| android-studio                   | 2025.2.3.9   | ❌       |
| azahar                           | 2124.3       | ✅       |
| azaharplus                       | 2124.3-A     | ✅       |
| bazaar                           | 0.7.8        | ✅       |
| bitwarden-desktop                | 2025.11.0    | ❌       |
| brave                            | 1.87.186     | ❌       |
| calamares                        | 3.4.0        | ✅       |
| cinny-desktop                    | 4.10.2       | ✅       |
| dgop                             | 0.2.1        | ✅       |
| dms-shell                        | 1.2.3        | ✅       |
| dms-shell-niri                   | /            | ✅       |
| drawio-desktop                   | 29.3.6       | ✅       |
| discord                          | 0.0.124      | ❌       |
| dsearch                          | 0.1.2        | ✅       |
| feishin                          | 1.5.0        | ✅       |
| ferdium                          | 7.1.1        | ✅       |
| freetube                         | 0.23.13      | ✅       |
| grayjay                          | 14           | ❌       |
| gruvbox-bibata-cursor-theme      | /            | ❌       |
| gruvbox-material-theme           | /            | ❌       |
| heroic-games-launcher            | 2.19.1       | ✅       |
| intel-media-driver-nonfree       | 25.3.4       | ✅       |
| intel-media-driver-nonfree-devel | /            | ✅       |
| librewolf                        | 146.0.1-1    | ❌       |
| lutgen-cli                       | 1.0.1        | ✅       |
| lutgen-studio                    | 0.3.0        | ✅       |
| ly                               | 1.3.2        | ✅       |
| mission-center                   | 1.1.0        | ✅       |
| ndpm                             | 0.1.5        | ✅       |
| nerd-fonts-cascadiacode          | 3.4.0        | ❌       |
| nmenu                            | 5.4          | ✅       |
| noid-base-files                  | 0.1          | /        |
| noid-base-system                 | 0.1          | /        |
| noid-welcome                     | 0.2.1        | ✅       |
| nyancat                          | 1.2.1        | ✅       |
| nwm                              | 6.7          | ✅       |
| obsidian                         | 1.11.7       | ❌       |
| onlyoffice                       | 9.2.1        | ❌       |
| PrismLauncher-Patched            | 10.0.2       | ✅       |
| proton-authenticator             | 1.1.4        | ❌       |
| rustdesk                         | 1.4.4        | ❌       |
| sbm-rs                           | 0.1.0        | ✅       |
| slack-desktop                    | 4.47.69      | ❌       |
| spotify                          | 1.2.82       | ❌       |
| tutanota-desktop                 | 327.260210.0 | ❌       |
| vscodium                         | 1.109.21026  | ❌       |
| webapp-manager                   | 1.4.2        | ❌       |
| zap-rs                           | 0.3.1        | ✅       |
| zen-browser                      | 1.18.6b      | ❌       |
| zig                              | 0.15.2       | ❌       |

## License

This project is released under the MIT License. For more details, see the LICENSE file.
