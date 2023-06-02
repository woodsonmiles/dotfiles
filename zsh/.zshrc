export _JAVA_AWT_WM_NONREPARENTING=1
export PATH=/opt/flutter/bin:$PATH
export PATH=/opt/android-studio/bin:$PATH

export PATH=$HOME/.local/bin:$PATH

export GTK_THEME=Gruvbox-Material:Dark

#eval `dircolors $HOME/.dircolors`

eval $(env TERM=xterm-256color dircolors -b $HOME/.dircolors)
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
 if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
 fi

 source powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
#
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

alias sp='sudo pacman'
alias ss='sudo systemctl'

alias gs='git status'
alias gc='git commit'
alias ga='git add'
alias gp='git push'
alias gca='git commit --amend --no-edit'
alias gst='git stash'

# Add git autocomplete
autoload -Uz compinit && compinit


