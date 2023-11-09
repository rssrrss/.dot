#!/bin/sh

git submodule update --recursive --remote --init

mkdir /home/rns/.cache
mkdir /home/rns/.local

mkdir -p /home/rns/.config/nvim/db_ui

cd ./pub || {
  exit 1
}

make install

cd ../pri || {
  exit 1
}

make install
