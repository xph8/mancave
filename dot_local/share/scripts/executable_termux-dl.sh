#!/usr/bin/env sh

set -eufo pipefail

echo "Installing packages"
pkg upgrade -y
pkg install -y python
python -m pip install yt-dlp

echo "Linking storage"
termux-setup-storage

echo "Redirect share to yt-dlp"
echo "yt-dlp -P $PREFIX/storage/downloads -o \"%(title)s.%(ext)s $1\"" >| $PREFIX/bin/termux-url-opener
