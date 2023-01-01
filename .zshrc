# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# source prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# p10k configuration. To customize run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh 

# pipenv virtual enviournment
path+=(~/.local/bin)

# suggest correction to previous command
eval $(thefuck --alias tf)

# utility
alias dotman='/usr/bin/git --git-dir=$HOME/.dotfiles/.dotman/ --work-tree=$HOME'
alias makedo='make -C $HOME/scripts/'

# youtube-dl
alias youtube-dl='noglob youtube-dl'
alias -g audio='-i --extract-audio --audio-format mp3 --audio-quality 0'
alias -g audio-playlist='-ic -o "%(title)s-%(id)s.%(ext)s" --yes-playlist --extract-audio --audio-format mp3 --audio-quality 0'

alias docker='sudo docker'
alias docker-compose='sudo docker-compose'

# pip
# alias pip='pipenv'
