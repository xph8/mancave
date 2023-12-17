#!/usr/bin/env sh

# update with python: {{ output python --version }}
declare -a packages=(
    black
    isort

    numpy
    scipy
    pandas
    matplotlib
    seaborn

    notebook
    sphinx

    requests
    pytest
)

for package in "${packages[@]}"; do
    if pipx list | grep "package $package"; then
        pipx reinstall $package --python $(which python)
    else
        pipx install $package --include-deps --python $(which python)
    fi
done
