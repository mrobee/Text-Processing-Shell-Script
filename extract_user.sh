#!/usr/bin/env sh

# This script extract twitter username from text and output them to STDOUT
# Using GNU sed software

# for OS X user:
# brew install gnu-sed
# and use gsed instead of sed

sed -n -r 's|.*(@[A-Za-z0-9_]+).*|\1|p' < /dev/stdin