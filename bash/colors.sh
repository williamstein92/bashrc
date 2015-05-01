gray="\e[0;90m"
green="\e[0;32m"
red="\e[0;31m"
yellow="\e[0;33m"
cyan="\e[0;36m"

reset="\e[0m"

eval $(gdircolors -b $__dir__/dircolors.sh)

export CLICOLOR=1
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
