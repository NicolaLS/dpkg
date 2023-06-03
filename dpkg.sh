#!/usr/bin/env bash

PKG_NAME=$(basename "$PWD")
# You'll need to create this file and put it in .git/info/exclude
{
    read -r TARGET_BASE
    read -r ID_FILE
    read -r TARGET_HOST
} < dpkg_conf.txt
echo $TARGET_BASE
echo $TARGET_HOST
CHANGED=$(git ls-files --others | awk '{print $0}')


echo "$CHANGED" | while read -r file
do
    scp -rvi $ID_FILE $(pwd)/$file $TARGET_HOST:$TARGET_BASE$PKG_NAME/$file
done

