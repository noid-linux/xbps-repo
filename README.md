<div align="center">
	<img
		src="https://github.com/noid-linux/.github/blob/main/assets/noid-logo.png?raw=true"
		width="128"
		alt="Noid Linux logo"
	/>
	<br />
	<h1 align="center">Noid Custom XBPS Repository</h1>
	<p align="center">
		<a href="https://noid-linux.github.io"><b>Website</b></a>
		-
		<a href="https://github.com/noid-linux/xbps-repo#installation-instructions"
			><b>Usage Instructions</b></a
		>
		-
		<a
			href="https://github.com/noid-linux/noid-packages/issues/new?template=pkg-request.yml"
			><b>Request a Packages</b></a
		>
		-
		<a href="https://matrix.to/#/#noid-support:ch-naseem.com"
			><b>Community</b></a
		>
		- <a href="https://noid-linux.github.io/donate/"><b>Donate</b></a>
	</p>
</div>

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
