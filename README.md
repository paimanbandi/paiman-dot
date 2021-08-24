# paiman-dot

My set of zsh, alacritty, tmux, neovim and git configuration files.

## ⚡️ Installation

<details>
  <summary>Fira Code Nerd Font</summary>

```zsh
cd ~/Library/Fonts && { wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf ; cd -; }
```

</details>

<details>
  <summary>NodeJS</summary>

```zsh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
```

```zsh
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
```

```zsh
nvm install node
```

```zsh
nvm install v14.17.4
```

```zsh
nvm install-latest-npm
```

```zsh
npm install --global yarn
```

</details>

<details>
  <summary>TypeScript</summary>

```zsh
npm install -g typescript
```

</details>

<details>
  <summary>Golang</summary>

```zsh
sudo port install go
```

</details>

<details>
  <summary>PHP</summary>

```zsh
sudo port install php80

sudo port install php80-openssl

sudo port install php80-intl

sudo port install php80-mbstring

php80 --version
```

```zsh
curl -sS https://getcomposer.org/installer | php

sudo mv composer.phar /usr/local/bin/composer

composer --version
```

</details>

<details>
  <summary>Rust</summary>

```zsh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

</details>

<details>
  <summary>Haskell</summary>
```zsh
cd /Applications && { wget https://downloads.haskell.org/~ghc/9.0.1/ghc-9.0.1-x86_64-apple-darwin.tar.xz; cd -; } && tar xzvf /Applications/ghc-9.0.1-x86_64-apple-darwin.tar.xz

cd ghc-9.0.1

./configure

make install

````

```zsh
sudo port install stack
````

```zsh
stack install ghc-mod hlint hdevtools hfmt
```

```zsh
brew install haskell-language-server

```

</details>

<details>
  <summary>Elixir</summary>

```zsh
brew install elixir
```

</details>

<details>
  <summary>Oh My Zsh</summary>

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

</details>

<details>
  <summary>Alacritty</summary>

```zsh
sudo port install alacritty
```

</details>

<details>
  <summary>Tmux</summary>

```zsh
sudo port install tmux
```

</details>

<details>
  <summary>Neovim</summary>

```zsh
cd /Applications && { wget https://github.com/neovim/neovim/releases/download/v0.5.0/nvim-macos.tar.gz ; cd -; } && tar xzvf /Applications/nvim-macos.tar.gz && ln -s /Applications/nvim-osx64/bin/nvim /usr/local/bin/nvim

```

```zsh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

</details>

<details>
  <summary>Pynvim</summary>

```zsh
python3 -m pip install --user --upgrade pip

python3 -m pip install --user --upgrade pynvim
```

</details>

<details>
  <summary>MySQL & PostgreSQL Client</summary>

```zsh
brew install mysql-client
```

```zsh
brew install libpq

brew link --force libpq
```

</details>

<details>
  <summary>Other tools</summary>

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

```zsh
sudo port install calc
```

```zsh
sudo port install git-delta
```

```zsh
sudo port install lazygit
```

```zsh
sudo port install htop
```

```zsh
sudo port install gotop
```

```zsh
sudo port install asciidoc
```

```zsh
brew install lnav
```

</details>
