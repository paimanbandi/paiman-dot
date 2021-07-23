export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="lambda-mod"

export LAMBDA_MOD_N_DIR_LEVELS=10

plugins=(
	git
	docker
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

if type rg &> /dev/null; then
	export FZF_DEFAULT_COMMAND='rg --files'
	export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

export CLICOLOR=1

export EDITOR="v"
export VISUAL="v"

source $HOME/.paths.conf
source $HOME/.aliases.conf
