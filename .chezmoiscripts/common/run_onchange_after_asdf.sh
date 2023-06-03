#! /bin/sh

# FIXME lazygit
declare -a plugins=(
    "python"
    "golang"
    "rust"
    "ruby"
    "lua"

    "etcd"
    "helm"
    "terraform"
    "kubebuilder"
    "kubectl"
    "kustomize"
)

function asdf_plugin_add {
    asdf plugin add $1
    exit_code=$?

    if [ $exit_code == 2 ]; then
        return 0  # plugin is already installed
    fi

    return $exit_code
}

for plugin in "${plugins[@]}"; do
    asdf_plugin_add $plugin
    asdf install $plugin latest
    asdf global $plugin latest
done
