# Zsh Configuration

## Installation

1. Clone the repository:
   ```bash
   git clone git@github.com:m-ohba-ea/zshrc.git ${HOME}/.zsh
   ```

2. Initialize and update submodules:
   ```bash
   cd ${HOME}/.zsh
   git submodule init && git submodule update
   ```

3. Create a symbolic link:
   ```bash
   ln -s ${HOME}/.zsh/.zshrc ${HOME}/.zshrc
   ```

4. Modify `${HOME}/.zsh/zshrc-git/zshrc-zplug` according to the following diff:
   ```diff
    zplug "plugins/git", from:oh-my-zsh
    zplug "peterhurford/git-aliases.zsh"
    zplug "plugins/pip", from:oh-my-zsh
   -zplug "docker/cli", use:"contrib/completion/zsh/_docker"

    zplug "mollifier/anyframe"
    zplug "mollifier/cd-gitroot"
   -zplug "junegunn/fzf-bin", as:command, from:gh-r, rename-to:fzf
   +zplug "junegunn/fzf", as:command, from:gh-r
    zplug "junegunn/fzf", as:command, use:bin/fzf-tmux
    zplug "junegunn/fzf", use:"shell/*.zsh", as:plugin
    zplug "b4b4r07/enhancd", use:init.sh
   @@ -40,7 +40,7 @@ if ! zplug check --verbose; then
    fi

    # Link commands, add to PATH, and load plugins
   -zplug load --verbose
   +zplug load
   ```

5. Reload the shell configuration:
   ```bash
   exec $SHELL -l
   ```
