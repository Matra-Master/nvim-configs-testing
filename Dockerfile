FROM anatolelucet/neovim:0.10.1-ubuntu
RUN apt update && DEBIAN_FRONTEND=noninteractive TZ="Argentina\Buenos_Aires" apt-get -y install tzdata
RUN apt-get -y install make gcc ripgrep unzip git xclip
