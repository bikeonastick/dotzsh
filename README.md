# my ZSH setups

Moving my shell from `bash` to `zsh` and this is really just here to help me
remember what to do when I set up another box. 

## installation

1. check out this repo
1. `cd` into the top of the repo
1. create your config directory. My setup has `ZDOTDIR` setin the .zshenv file
   and it assumes you're using `~/.config/zsh`, so create it.

   ```
   mkdir ~/.config/zsh
   ```

1. Would be nice to keep all the files in that directory but for zsh to find the
   env file that contains the `ZDOTDIR` setting, it needs to be in a location
   `zsh` is looking, and that place is in your home directory. As such, you need
   to link `zshenv` into your home directory:

   ```
   ln -s "`pwd`/zshenv ~/.zshenv"
   ```

1. The rest of your configs are in the `.zshrc` put it in the `ZDOTDIR`

   ```
   ln -s "`pwd`/zshrc ~/.config/zsh/.zshrc"
   ```

