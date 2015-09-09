test_import
list() {
    ARGUMENTS=$@

    if [[ -z $ARGUMENTS ]]
    then
      ARGUMENTS=$PWD
    fi

    ls -aG "${ARGUMENTS}"
}
alias ls=list

change_directory() {
    DIR=$1
    builtin cd "${DIR}" && ls
}

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
