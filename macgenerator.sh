#!/bin/bash

# Usage
# -------------------------------------------
usage() { echo "usage: $0 src_image bg_color [dst_dir]"; exit 1; }
[ "$1" ] && [ "$2" ] || usage
[ "$3" ] || set "$1" "$2" "./dst"


# Directories
# -------------------------------------------
ICONDIR=$3/icon
SCREENDIR=$3/screen
eval mkdir -p "$ICONDIR"
eval mkdir -p "$SCREENDIR"


# Show progress
# -------------------------------------------
set -x


# App Icons
# -------------------------------------------
c="convert -background none"

# Mac 16pt
$c "$1" -resize 16x16   "$ICONDIR/Icon-16.png"
$c "$1" -resize 32x32 "$ICONDIR/Icon-16@2x.png"
# Mac 32pt
$c "$1" -resize 32x32   "$ICONDIR/Icon-32.png"
$c "$1" -resize 64x64 "$ICONDIR/Icon-32@2x.png"
# Mac 128pt
$c "$1" -resize 128x128   "$ICONDIR/Icon-128.png"
$c "$1" -resize 256x256 "$ICONDIR/Icon-128@2x.png"
# Mac 256pt
$c "$1" -resize 256x256   "$ICONDIR/Icon-256.png"
$c "$1" -resize 512x512 "$ICONDIR/Icon-256@2x.png"
# Mac 512pt
$c "$1" -resize 512x512  "$ICONDIR/Icon-512.png"
$c "$1" -resize 1024x1024 "$ICONDIR/Icon-1024@2x.png"

