FROM ubuntu:focal-20211006

LABEL maintainer="Paiman <paiman.bandi@gmail.com>"

ARG DEBIAN_FRONTEND=noninteractive
ENV HOME /root
ENV ZSH_CUSTOM $HOME/.oh-my-zsh/custom/

WORKDIR $HOME

RUN apt-get update -y

RUN apt-get install -y \
	curl \
	wget \
	zsh \
	git \
	openssh-client \
	neovim \
	fzf \
	ripgrep \
	nodejs \
	npm

RUN npm install -g nodemon typescript typescript-formatter

#docker
RUN apt install -y apt-transport-https ca-certificates gnupg-agent software-properties-common

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

RUN apt update -y
RUN apt install -y docker-ce docker-ce-cli containerd.io

#neovim
COPY .config/nvim $HOME/.config/nvim

RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

RUN nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

#zsh
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
RUN git clone https://github.com/zsh-users/zsh-autosuggestions \
	${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
	${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
RUN curl -fLo $HOME/.oh-my-zsh/themes/lambda-p.zsh-theme --create-dirs \
	https://raw.githubusercontent.com/paimanbandi/lambda-p/master/lambda-p.zsh-theme

COPY .zshrc $HOME/.zshrc

WORKDIR /docker

CMD ["tail", "-f", "/dev/null"]
