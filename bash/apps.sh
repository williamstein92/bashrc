test_import

len() {
    str=$1
    echo ${#str}
}

clear_and_list() {
    clear
    ls
}

import_local() {
    PROFILE=~/.profile
    if [ -e $PROFILE ]
    then
        source $PROFILE

        if [ -z $__PROJECT__ ]
        then
            export __PROJECT__=~/project_path.sh

            if [ -e $__PROJECT__ ]
            then
                source $__PROJECT__
            else
                echo "PROJECT_PATH=~" > $__PROJECT__
            fi
        fi
    fi
}

new() {
    if [ -z $1 ]
    then
        "expected at least one argument"
    elif [ $1 = "skeleton" ]
    then
        if [ -z $2 ]
        then
            echo "expected project name"
        fi

        git clone "${SKELETON_PATH}" $2
    else
        mkdir $1
        cd $1
    fi
}

set_wp() {
    path=$PWD
    export PROJECT_PATH=$path
    echo "PROJECT_PATH=\"${path}\"" > $__PROJECT__
}

wp()
{
    cd "${PROJECT_PATH}"
}

up()
{
    unity_app -projectPath "${PROJECT_PATH}"
}

go_to_unity_directory()
{
    path=$1
    if [ -d "./Assets/${path}" ]
    then
        cd "./Assets/${path}"
    else
        printf "${red}directory doesn't exist${reset}\n"
    fi
}

scripts()
{
    go_to_unity_directory "Scripts"
}

shaders()
{
    go_to_unity_directory "Shaders"
}

models()
{
    go_to_unity_directory "Models"
}

textures()
{
    go_to_unity_directory "Textures"
}

materials()
{
    go_to_unity_directory "Materials"
}

editor()
{
    go_to_unity_directory "Editor"
}

plugins()
{
    go_to_unity_directory "Plugins"
}

yo()
{
    echo 'yo!'
}

O()
{
    echo ':('
}

multiple_copy() {
    SOURCE=$1
    for DESTINATION in "${@:2}"
    do
        cp $SOURCE $DESTINATION
    done
}

jump() {
    cd "$(git rev-parse --show-toplevel)"
}

all_like_pattern() {
    PATTERN=$1
    MATCHES=( $PATTERN )

    if [ "${MATCHES}" == "${PATTERN}" ]; then
        return
    fi

    echo "${MATCHES[*]}"
}

first_like_pattern() {
    PATTERN=$1
    MATCHES=( $PATTERN )

    if [ "${MATCHES}" == "${PATTERN}" ]; then
        return
    fi

    echo "${MATCHES[0]}"
}

proj() {
    NAME=$( first_like_pattern "*.sublime-project" )
    subl --project "${NAME}"
}

autofill_branch() {
    name=$1
    size=$( len $name )

    for branch in $(git for-each-ref --format='%(refname)' refs/heads/); do
        branchname="${branch:11}"
        if [ "${name}" == "${branchname:0:size}" ]; then
            echo "${branchname}"
            return
        fi
    done
}

smart_cd() {
    name=$1
    matches=$( all_like_pattern "${name}*" )
    for match in $matches; do
        if [ -d "${match}" ]; then
            change_directory "${match}"
            return
        fi
    done
}

autofill_dir() {
    dir=$1
    name=$2

    if [ -d "${name}" ]; then
        cd "${name}"
        return
    fi

    if [ ! -z "${name}" ]; then
        builtin cd "${dir}"
        smart_cd "${name}"
    else
        cd "${dir}"
    fi
}

smart_workbench() {
    autofill_dir "${WORKBENCH_PATH}" $@
}


open_old()
{
    autofill_dir "./__old__/" $@
}

smart_checkout() {
    name=$1

    if [ "${name}" == "-b" ]; then
        git checkout $@
    fi

    fullname=$( autofill_branch "${name}" )
    git checkout "${fullname}"
}

smart_python() {
    # load from arg
    NAME=$1

    if [ ! -f "${NAME}" ]; then
        NAME=$( first_like_pattern "${NAME}*" )
    fi

    if [ ! -f "${NAME}" ]; then
        NAME=$1
        NAME="${NAME}.py"
    fi

    # if no file from arg, load from ls
    if [ ! -f "${NAME}" ]; then
        NAME=$( first_like_pattern "*.py" )
    fi

    python $NAME
}
