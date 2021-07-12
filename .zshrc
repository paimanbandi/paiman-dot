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

export GOPATH="$HOME/go:$HOME/Projects/golang"
export PATH=$PATH:$GOPATH/bin

if type rg &> /dev/null; then
	export FZF_DEFAULT_COMMAND='rg --files'
	export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

alias c="clear"
alias m= "mkdir"
alias x="exit"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

#exa
alias ls="exa -al"
alias la="exa -abghHliS"
alias lt="exa --long --tree"

#vim
alias v="vim"
alias vv="v --version"
alias vc="v ."
alias vz="v ~/.zshrc"
alias vr="v ~/.vimrc"
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
alias glg="g log"
alias glgo="glg --oneline"

#projects
alias p="cd ~/Projects"
alias pw="cd ~/Projects/work"
alias pp="cd ~/Projects/personal"

export EDITOR="v"


