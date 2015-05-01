__root__=/etc
__file__=$__root__/bashrc # this file
__dir__=$__root__/bash # bash config files

import ()
{
  source $__dir__/$1.sh
}

import __init__
