#! /bin/bash

declare -a packages=(
    "plasma-discover"
    "kmines"
    "kpat"
)

for package in "${packages[@]}"; do
    sudo dnf remove -y $package
done
