#! /bin/sh

# tmux plugin manager
if [ ! -d $HOME/.config/tmux/plugins/tpm ]; then
    git clone https://github.com/tmux-plugins/tpm $HOME/.config/tmux/plugins/tpm
fi

# asdf
if [ ! -d $HOME/.config/asdf ]; then
    asdf="https://github.com/asdf-vm/asdf.git"

    latest_tag=$(git ls-remote --tags --sort="v:refname" $asdf \
                    | tail --lines 1 \
                    | sed 's/.*\///; s/\^{}//'
                )

    git clone $asdf ~/.config/asdf --branch $latest_tag
fi

declare -a plugins=(
    "python"
    "golang"
    "rust"
    "ruby"
    "lua"
    "kubectl"
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
done
