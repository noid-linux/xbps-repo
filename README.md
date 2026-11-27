<div align="center">
	<img
		src="https://github.com/noid-linux/.github/blob/main/assets/noid-logo.png?raw=true"
		width="128"
		alt="Noid Linux logo"
	/>
	<br />
	<h1 align="center">Noid Linux XBPS Repository</h1>
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
> Some packages in this repository are repackaged from official
> upstream binaries (e.g., Brave, LibreWolf, VSCodium) while others
> are built from source (e.g., Ferdium). Check individual package
> templates in [`srcpkgs/`][srcpkgs] for build details.

## Installation Instructions

The easiest way is by adding our repository, which includes pre-built
binaries. You can do so by creating a new file and specifying the
repository URL.

```sh
echo "repository=https://github.com/noid-linux/xbps-repo/releases/download/main" | sudo tee /etc/xbps.d/0-repository-noid.conf
```

<details>
	<summary>+ additional subrepos</summary>

```sh
sudo tee 0-repository-noid.conf <<-EOH
# noidlinux remote repositories
# repository=https://github.com/noid-linux/xbps-repo/releases/download/dinit
repository=https://github.com/noid-linux/xbps-repo/releases/download/main
repository=https://github.com/noid-linux/xbps-repo/releases/download/nonfree
EOH
```

If you're using Dinit, remember to uncomment the corresponding
repo. It is important to give Noid's dinit subrepo priority over the
Void Linux repos, this is because Noid has it's own build of
dinit. Compare the two templates for better context:

- [Void's template for dinit][void/dinit]
- [Noid's template for dinit][noid/dinit]

</details>

Once you've created the file above, proceed with installing any
packages you want using xbps:

```sh
sudo xbps-install -Su
sudo xbps-install brave librewolf vscodium
```

## Repository public key

<details>
	<summary>da:fa:23:9e:97:a9:2b:77:07:90:9f:cf:45:28:98:ce.plist</summary>

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>public-key</key>
	<data>LS0tLS1CRUdJTiBQVUJMSUMgS0VZLS0tLS0KTUlJQ0lqQU5CZ2txaGtpRzl3MEJBUUVGQUFPQ0FnOEFNSUlDQ2dLQ0FnRUF5WjZqaXJRWVpsQU9RSWw2cXFnWQpmREU5R3BGb09NUnY2aCtlOVgyQUxDL0lNTy9McnZzRjdERjJEdEduOURySXNZcjhPNmFMT3hpM2p6aUsyVjZLCm1MYnNWUUFiUVF2UDZkNThaUG9zdXlrdDRRNnF6aXhpZDREdTNybEdELzdSTDV6dUk5ekt0UkkxNlFxdENjRGwKaHVGMGVBSis0MCs1bU9QQnQweDA5dlhQNDJnTWZYZHFuaHVFTHJQa1lIUnUrZWN1YUdJNjlmOGY3SG5wcTJlSwpBWDdLSW9TSHlyL05PUjNkRUZjNWRIY2wzbFJEZEhlQkdOZGRVRnlCbUxuM2FJVHRybmRPNUlJRkxTS1R5RHpUCngzZit0TE5nL3pxUkxpNkZGSWF5UjhreXdxdFg1c0NXZzJLS0pCb2pyOVpsUXhwcklYYXV2OUwvYUZGblhFYlUKbmc4c3VJQ28wN0JyaVBiV2pyYlA4dS8vZmRzaHNLWDF2alJMUHpwV0h5SHVIS3VVdnJnRDRNUEo5ZnQvcnNFaQp6MW5KY2ZjV05IdUJYMnBiczhjMU5zbGlUR2ptRUNVU0JqV2RmVEp3Vlp6ZjhlRjBwdW5tdTIwcHVRT1FTcXo0CkdUVE1IaGdDVWpadDZDWk41Q3hlaWlSWExDSGdRZUpLaTJnS0daNkRzUWs5R1dUMzFLL2NrRGx4QVVhVHF3b3gKN1E1MUplVE9nbE41dFIrelpQSTcxRUwyVWY5MmF1a3Z6T3NzaldwZDFFWDRsUlVOTnRWQUNMd0tmUWozTWhEWQpHYjI0N0hEWG5mY3pTZTBRS1oyMVBJSUNXQUt6Q3d2T2dkU25aODRvRWh3QXBpMFh1dlJXV0Z6Vk1GVUFIZkhsCnpDT3lCMDJvdGs0cEEvWmtEOU14dm9FQ0F3RUFBUT09Ci0tLS0tRU5EIFBVQkxJQyBLRVktLS0tLQo=</data>
	<key>public-key-size</key>
	<integer>4096</integer>
	<key>signature-by</key>
	<string>noid-packages-github-actions</string>
</dict>
</plist>
```

</details>

[srcpkgs]: https://github.com/noid-linux/noid-packages/tree/master/srcpkgs
[void/dinit]: https://github.com/void-linux/void-packages/blob/master/srcpkgs/dinit/template
[noid/dinit]: https://github.com/noid-linux/noid-packages/blob/master/srcpkgs/dinit/template
