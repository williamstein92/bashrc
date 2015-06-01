test_import
list() {
    dir=$1

    if [[ -n $1 ]]; then
        dir=$PWD
    fi

    ls -aG $dir
}
alias ls=list

change_directory() {
    DIR=$1
    cd "${DIR}" && ls
}
alias cd=change_directory

prompt_string() {
  if [[ $EUID -ne 0 ]]; then
    echo ":"
  else
    echo "${red}*${reset}"
  fi
}
export PS1=$(prompt_string)

switch_user() {
    su -l $@
}
alias su=switch_user

print_working_dir() {
  printf "${cyan}${PWD}${reset}\n";
}
alias pwd=print_working_dir
