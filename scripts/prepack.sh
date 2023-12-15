#! /bin/bash

set -e

rm -rf components svgs
mkdir components svgs

for file in node_modules/@primer/octicons/build/svg/*-16.svg; do
	NAME=$(basename "$file" -16.svg)
	cp "$file" "svgs/$NAME.svg"
	sed -i "" "s/xmlns/class=\"octicon octicon-$NAME\" xmlns/g" "svgs/$NAME.svg"

	# assert that the file create includes the word octicon
	grep -q octicon "svgs/$NAME.svg"
done

svgr --out-dir components \
	--no-index \
	--typescript \
	--template template.cjs \
	--svg-props role=img \
	--svg-props aria-hidden=true \
	--no-svgo -- svgs

rm -rf svgs
