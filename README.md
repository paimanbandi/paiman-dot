# paiman-dot
My set of zsh, alacritty, tmux, and neovim configuration files.


## ⚡️ Installation

### Fira Code Nerd Font

```zsh
cd ~/Library/Fonts && { wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf ; cd -; }
```

### NodeJS

```zsh
sudo port install nodejs14
```


```zsh
sudo port install npm7
```


```zsh
sudo npm install --global yarn
```

### Oh My Zsh

```zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

```zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```


```zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```


```zsh
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
```


```zsh
cd ~/.oh-my-zsh/themes && { wget https://raw.githubusercontent.com/halfo/lambda-mod-zsh-theme/master/lambda-mod.zsh-theme ; cd -; }
```


### Alacritty

```zsh
sudo port install alacritty
```


### Tmux

```zsh
sudo port install tmux
```


### Neovim 

```zsh
cd /Applications && { wget https://github.com/neovim/neovim/releases/download/v0.5.0/nvim-macos.tar.gz ; cd -; }

tar xzvf /Applications/nvim-macos.tar.gz

ln -s /Applications/nvim-osx64/bin/nvim /usr/local/bin/nvim

```


```zsh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### MySQL & PostgreSQL Client

```zsh
brew install mysql-client
```


```zsh
brew install libpq  

brew link --force libpq
```


### Other tools

```zsh
sudo port install exa
```


```zsh
sudo port install yank
```


```zsh
sudo port install fzf
```


```zsh
sudo port install fd
```


```zsh
sudo port install ripgrep
```


```zsh
sudo port install glow
```


```zsh
sudo port install wtfutil
```


```zsh
sudo port install lazydocker
```


```zsh
sudo port install httpie
```

