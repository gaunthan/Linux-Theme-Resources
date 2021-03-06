#!/usr/bin/env bash

decompress_and_deploy()
{
  src=$1
  dst=$2

  echo "Installing $1 to $2:"

  for theme in `ls $src`; do
	echo "Deploying $theme..."
	tar xzf "$1/$theme" -C $2
  done
}

cd /tmp
git clone https://github.com/gaunthan/Linux-Theme-Resources.git
cd Linux-Theme-Resources

mkdir -p ~/.icons
mkdir -p ~/.themes

decompress_and_deploy cursor-themes ~/.icons
decompress_and_deploy icon-themes ~/.icons
decompress_and_deploy gtk-themes ~/.themes
decompress_and_deploy shell-themes ~/.themes
