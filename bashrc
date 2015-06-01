__debug__=0
__monitor__=0
__root__=/etc
__file__=$__root__/bashrc       # this file
__dir__=$__root__/bash          # bash config files

test_import() {
    if [ $__debug__ -eq 1 ]
    then
        __file__=$(basename $__imported__)
        echo "imported ${__file__}"
    fi
}

import() {
    export __imported__="$__dir__/$1.sh"
    source $__imported__
}

if [ $__debug__ -eq 1 ]
then
    printf "\e[0;31m-------------------------------------------------------------------------------\n-\n-  __debug__ is on\n-\n"
fi

import __init__
