# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to Oh My Zsh installation.
export ZSH="$ZDOTDIR/ohmyzsh"

# Environment variables to load on initialization
export YSU_MESSAGE_POSITION="after"
export YSU_MESSAGE_FORMAT="$(tput setaf 3)Use the %alias_type %alias$(tput sgr0)"

# Set Zsh theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Oh My Zsh Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting you-should-use asdf sudo)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Load Powerlevel10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Load asdf-direnv
if [[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc" ]]; then
    source "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc"
fi
