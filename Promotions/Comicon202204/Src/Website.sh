#!/bin/sh

# Downloading the website (posts, media, forum threads)
# https://simpleit.rocks/linux/how-to-download-a-website-with-wget-the-right-way

Website="https://spacccraft.altervista.org"

wget \
	--level=inf \
	--recursive \
	--page-requisites \
	--user-agent=Mozilla \
	--no-parent \
	--convert-links \
	--adjust-extension \
	--no-clobber \
	-e robots=off \
	"$Website"

cd "$(echo "$Website" | cut -f 3 -d /)"
rm -rf wp-admin wp-login*
