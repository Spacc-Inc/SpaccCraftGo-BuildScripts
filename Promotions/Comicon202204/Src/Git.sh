#!/bin/sh

# Downloading every Git repo

Git="https://gitlab.com"

mkdir -p Git
cd Git

for i in \
	"SpaccCraftGo-BuildScripts" \
	"SpaccCraft-Scripts" \
	"SpaccCrafter" \
	"SpaccCraft.Run" \
	"SpaccCraftAPI"
do
	git clone --depth 1 ""$Git"/SpaccInc/SpaccCraft/"$i""
done

for i in \
	"spaccinc.gitlab.io" \
	"Sysadmin"
do
	git clone --depth 1 ""$Git"/SpaccInc/"$i""
done

cd ..
7z a -mx9 "Git.7z" "Git"
rm -rf Git
