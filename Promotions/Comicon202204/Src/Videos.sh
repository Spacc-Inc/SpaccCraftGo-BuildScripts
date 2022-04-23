#!/bin/sh

# Downloading channel videos
# https://odysee.com/$/invite/@SpaccCraft:7

#BaseURL="https://player.odycdn.com/api/v4/streams/free"

mkdir -p Videos
cd Videos

for i in \
	"UwgA6aNIjEs"
do
	yt-dlp -f "bestvideo+bestaudio" "$i"
done

#for i in \
#	"SpaccCraft-Tour-Anteprima-Aprile-2022/659eef5a66acd30fc269215bdc4ca1ef0668a7b5/01b096"
#do
#	Filename="$(echo "$i" | cut -f 1 -d /).mp4"
#	wget -O "$Filename" ""$BaseURL"/"$i"?download=true"
#done
