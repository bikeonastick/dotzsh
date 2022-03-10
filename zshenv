export ZDOTDIR=~/.config/zsh/

fpath+=~/Development/mine/dotzsh/zshfunctions

export PATH=~/Development/homebrew/bin:~/Development/homebrew/sbin:~/Library/Python/3.4/bin:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:$HOME/bin:$HOME/.rvm/bin:/usr/local/share/npm/bin:/usr/local/go/bin:~/Development/tools/flutter/bin:$PATH 

# persisting shell history
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history

