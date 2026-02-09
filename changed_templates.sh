#!/usr/bin/env bash
#
# changed_templates.sh

echo "Old pkgs:"
gh release view latest --repo noid-linux/xbps-repo \
	--json assets --jq '.assets[].name' | sed \
	's/\.x86_64\.xbps//' | rg -v 'x86_64-repodata|sig2' | tee \
	/tmp/old_pkgs

echo "New pkgs:"
for pkg in $(ls -1 srcpkgs); do
	ver=$(rg "^version=" srcpkgs/$pkg/template | awk -F= '{ print $2 }')
	rev=$(rg "^revision=" srcpkgs/$pkg/template | awk -F= '{ print $2 }')
	echo -e "$pkg-${ver}_$rev" | tee -a /tmp/new_pkgs
done

sort /tmp/new_pkgs -o /tmp/new_pkgs
sort /tmp/old_pkgs -o /tmp/old_pkgs

echo -e '\x1b[32mChanged packages:\x1b[0m'
comm -13 /tmp/old_pkgs /tmp/new_pkgs | 
	sed 's/-[^-]*$//' |
	tee /tmp/templates |
	sed "s/^/  /" >&2
