# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to Oh My Zsh installation.
export ZSH="$ZDOTDIR/ohmyzsh"

# Path to Oh My Zsh custom plugins folder.
export ZSH_CUSTOM=$ZSH/custom

# Environment variables to load on initialization
export YSU_MESSAGE_POSITION="after"
export YSU_MESSAGE_FORMAT="$(tput setaf 3)Use the %alias_type %alias$(tput sgr0)"

# Set Zsh theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Oh My Zsh Plugins
plugins=(asdf direnv git sudo you-should-use zsh-autosuggestions zsh-syntax-highlighting)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Load Powerlevel10k
[[ ! -f ${ZDOTDIR:-~}/.p10k.zsh ]] || source ${ZDOTDIR:-~}/.p10k.zsh

# Add asdf to PATH
export PATH=$ASDF_DIR/bin:$PATH

# Load asdf-direnv
if [[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc" ]]; then
    source "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc"
fi

# Create directory for Zsh state files if it doesn't exist
[[ -d $XDG_STATE_HOME/zsh ]] || mkdir -p $XDG_STATE_HOME/zsh
