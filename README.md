# janky-nvim
A janky nvim configuration repo

## Setup

Install all the necessaries:
```bash
# Install dependancies
sudo apt install ripgrep

# Install nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage

# Install locally:
mkdir -p ~/.local/bin
mv nvim.appimage ~/.local/bin/nvim

# Install globally
sudo mkdir -p /opt/nvim
sudo mv nvim.appimage /opt/nvim/nvim
echo 'export PATH="$PATH:/opt/nvim/"' >> ~/.bashrc


# Install this repo (HTTPS)
git clone https://github.com/jonathanvanschenck/janky-nvim.git ~/.config/nvim

# Install `plug.vim`
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install plugins
nvim --headless +PlugInstall +qall
```

Then install all the plugins using `:PlugInstall` from inside `nvim`

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


## Setup on Debian 11
Debian 11 is on nvim 0.4.4, which is too old for the osc52 library, so here's a backup strat for installing the newest stable:
```
sudo apt remove neovim neovim-runtime
curl -L https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-linux64.deb > nvim-linux64.deb
sudo apt install ./nvim-linux64.deb
nvim --headless +PlugInstall +qall
```
