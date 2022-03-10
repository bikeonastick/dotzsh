# vi mode
set -o vi

# command history settings
setopt EXTENDED_HISTORY
SAVEHIST=5000
HISTSIZE=2000
setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY

# allow zsh to offer up corrections
setopt CORRECT
setopt CORRECT_ALL

# case insensitive globbing
setopt NO_CASE_GLOB

# aliases
alias ll='ls -al'

# functions

autoload tbase
autoload cpcrypt

# right side prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git

export EDITOR=nvim

# adding rbenv
#eval "$(rbenv init -)"

# adding nvm
export NVM_DIR="$HOME/.config/.nvm"
# loading nvm
[ -s "/Users/robert.tomb/Development/homebrew/opt/nvm/nvm.sh" ] && \. "/Users/robert.tomb/Development/homebrew/opt/nvm/nvm.sh"
# loading bash completion
[ -s "/Users/robert.tomb/Development/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/Users/robert.tomb/Development/homebrew/opt/nvm/etc/bash_completion.d/nvm"

# getting chruby
source /Users/robert.tomb/Development/homebrew/opt/chruby/share/chruby/chruby.sh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
[[ -s "${HOME}/.sdkman/bin/sdkman-init.sh" ]] && source "${HOME}/.sdkman/bin/sdkman-init.sh"
