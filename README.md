# paiman-dot
My set of zsh, alacritty, tmux, and neovim configuration files.


## ⚡️ Installation


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
curl -o ~/.ohmyzsh/theme/lambda-mod.zsh-theme
 https://github.com/halfo/lambda-mod-zsh-theme/blob/master/lambda-mod.zsh-theme
```


### Alacritty
```zsh
sudo port install alacritty
```


### Tmux
```zsh
sudo port install tmux
```


### Exa
```zsh
sudo port install exa
```


### Yank
```zsh
sudo port install yank
```

### Neovim 

```zsh
curl -o /Applications/nvim-macos.tar.gz https://github.com/neovim/neovim/releases/download/v0.5.0/nvim-macos.tar.gz

tar xzvf /Applications/nvim-macos.tar.gz

ln -s /Applications/nvim-osx64/bin/nvim /usr/local/bin/nvim

```


### Vim Plug

```zsh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```


