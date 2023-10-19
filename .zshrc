if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi



export TERMINAL=kitty
export BROWSER=firefox
export FILES=thunar
export SEARCH="./.bin/search.sh"
export EDITOR=code

export slstatus="$HOME/archlinux/dotfile/wm/dwm/slstatus/slstatus"
export BUN="$HOME/.bun/bin"
export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.local/bin:$PATH"


ZSH_THEME="powerlevel10k/powerlevel10k"


plugins=(
	git
	zsh-autosuggestions
	# End
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


alias u="doas pacman -Syu"
alias i="doas pacman -S"

alias ll="logo-ls -a -g"
alias l="logo-ls"
alias c="clear"
alias b="btop --utf-force"
alias rn="ranger"
alias v="vim"
alias n="nvim"
alias tm="tmux"

alias chadwm='startx ~/.config/suckless/chadwm/scripts/run.sh'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# bun completions
[ -s "/home/aravan/.bun/_bun" ] && source "/home/aravan/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
