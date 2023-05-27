#! /bin/bash

declare -a packages=(
    "plasma-discover"
    "kmahjongg"
    "kmines"
    "kpat"
)

for package in "${packages[@]}"; do
    sudo dnf remove -y $package
done
