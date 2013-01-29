#!/usr/bin/env sh

# This script convert single line insert with multiple values to multiple inserts with single value.

perl -pe 'if (/^(INSERT.+?)\(/) { $a=$1; s/\\'\''/'\'\''/g; s/\),\(/\);\n$a\(/g; }' < /dev/stdin