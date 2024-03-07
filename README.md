# janky-nvim
A janky nvim configuration repo

## Setup

We need to install from source (frickin' ubuntu is SUPER behind on versions)
```bash
# Install dependancies
sudo apt-get install -y ninja-build gettext cmake unzip curl ripgrep

# Install neovim
git clone --depth 1 --branch v0.9.5 https://github.com/neovim/neovim.git
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

# Install this repo (HTTPS)
git clone https://github.com/jonathanvanschenck/janky-nvim.git ~/.config/nvim

# Install `plug.vim`
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install plugins (this will throw errors, but it's fine...)
nvim --headless +PlugInstall +qall
```

## Optionals
### Sudoeditor
Consider making nvim your default `sudoeditor` tool. Add this to your `.bashrc`
```
# Make nvim the sudoedit-or
export EDITOR="nvim"
```

### Aliases
Consider aliasing nvim over vim. Add this to your `.bash_aliases`
```
alias vim='nvim -p'      # multi-open in tabs by default
alias vimdiff='nvim -d'
alias svim='sudoedit'    # this should be set to nvim in .bashrc
```

Also consider adding these really nice shortcuts for `vim-fugitive`
```
alias gc='git checkout'
alias gs='vim "+Git | only" "+normal i"'
alias gl='vim "+Git log --decorate | only"'
alias gd='_rando() { vim "+Gvdiffsplit $2" $1; }; _rando'
alias gb='vim "+Git blame -C -C -C" "+normal A"'
```

### Git
Consider making nvim your default git editor tool. Add this to your `.gitconfig`
```
[diff]
	tool = nvimdiff
[difftool]
	prompt = false
[difftoll "nvimdiff"]
	cmd = "nvim -d \"$LOCAL\" \"$REMOTE\""
[core]
	editor = nvim
```

