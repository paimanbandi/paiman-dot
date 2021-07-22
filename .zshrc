export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="lambda-mod"

export LAMBDA_MOD_N_DIR_LEVELS=10

#plugins
plugins=(
	git
	docker
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export GOPATH="$HOME/Projects/golang:$HOME/go"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_291.jdk/Contents/Home
export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export FLUTTER_HOME=/Applications/flutter

#path
path=(
	  /opt/local/{bin,sbin}
    /usr/local/{bin,sbin}
    $HOME/bin
    $path
)

export PATH=$PATH:$(yarn global bin):$GOPATH/bin:$JAVA_HOME/bin:$FLUTTER_HOME/bin:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools

if type rg &> /dev/null; then
	export FZF_DEFAULT_COMMAND='rg --files'
	export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

export CLICOLOR=1

alias a="alias"
alias c="clear"
alias e="echo"
alias k="kill"
alias pk="pkill"
alias l="less"
alias m="mkdir"
alias mp="m -p"
alias x="exit"

alias P="ping"
alias tr="traceroute"

#sudo
alias s="sudo"
alias sv="s v"
alias spi="s port install"

#yank
alias y="yank"
alias yl="y -l"

#bat
alias b="bat"
alias ba="b -A"
alias bl="b -l"
alias bn="b -n"
alias bt="b --paging=never -l log"

#exa
alias ls="exa -al"
alias la="exa -abghHliS"
alias lt="exa --long --tree"
alias lta="lt -a"

#neovim
alias v="nvim"
alias vv="v --version"
alias vc="v ."
alias vz="v ~/.zshrc"
alias vn="v ~/.config/nvim/init.vim"
alias vt="v ~/.tmux.conf"
alias va="v ~/.config/alacritty/alacritty.yml"

#tmux
alias t="tmux"
alias tv="t -V"
alias ts="t source-file ~/.tmux.conf"
alias ta="t attach"
alias tat="t attach -t"
alias tas="t attach-session -t"
alias tns="t new-session"
alias tls="t ls"
alias tks="t kill-session -t"
alias tksa="t kill-session -a"
alias tksv="t kill-server"

#docker
alias d="docker"
alias dv="d version"
alias di="d images"
alias dip="d image prune"
alias drm="d rm"
alias drmi="d rmi"
alias dbt="d build -t"
alias dcu="d compose up"
alias dcud="dcu -d"
alias dcub="dcu --build"
alias dcubd="dcub -d"
alias dcd="d compose down"
alias dpsa="d ps -a"
alias dc="d container"
alias dcst="dc start"
alias dcsp="dc stop"
alias dcrm="dc rm"
alias dritrm="d run -it --rm"
alias dn="d network"
alias dncr="dn create"
alias dnls="dn ls"
alias dnrm="dn rm"
alias dncn="dn connect"
alias dnd="dn disconnect"
alias dni="dn inspect"
alias dnp="dn prune"
alias dlg="d logs"
alias de="d exec"
alias dr="d run"
alias dpe='dr -it --rm -v "$(pwd):/docker" -v /var/run/docker.sock:/var/run/docker.sock paiman-env'

#git
alias g="git"
alias gi="g init"
alias gcfg="g config"
alias gf="g fetch"
alias gp="g push"
alias gpo="gp origin"
alias gpom="gpo master"
alias gl="g pull"
alias glo="gl origin"
alias glom="glo master"
alias ga="g add"
alias gac="ga ."
alias gr="g rebase"
alias grm="gr master"
alias gri="gr -i"
alias grc="gr --continue"
alias grs="gr --skip"
alias gco="g checkout"
alias gcom="gco master"
alias gcob="gco -b"
alias gmg="g merge"
alias gst="g status"
alias gcl="g clone"
alias gbr="g branch"
alias gcm="g commit -m"
alias gcam="g commit -am"
alias gsh="g stash"
alias gsp="g stash pop"
alias gsl="g stash list"
alias gsa="g stash apply"
alias gdf="g diff"
alias glg="g log"
alias glgo="glg --oneline"

#flutter
alias f="flutter"
alias fv="f --version"
alias fd="f doctor"
alias fr="f run"
alias fpg="f pub get"

#npm
alias n="npm"
alias ns="npm start"
alias nrt="npm run test"

#projects
alias p="cd ~/Projects"
alias pw="cd ~/Projects/work"
alias pp="cd ~/Projects/personal"

alias sz="source ~/.zshrc"
alias sv="source ~/.vimrc"

alias w="wtfutil"

export EDITOR="v"

