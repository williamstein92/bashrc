test_import

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

# open_project()
# {
#     cd "$PROJECT_PATH"
#     subl --project "ntv.sublime-project"
#     open -a "Unity"
#     open -a "Google Chrome"
# }
# alias boot=open_project

set_wp() {
    path=$PWD
    export PROJECT_PATH=$path
    echo "PROJECT_PATH=\"${path}\"" > $__PROJECT__
}

wp()
{
    cd "${PROJECT_PATH}"
}

open_old()
{
    path=$1
    if [ -d "./__old__/${path}" ]
    then
        cd "./__old__/${path}"
    elif [ -d "./.__old__/${path}" ]
    then
        cd "./.__old__/${path}"
    else
        printf "${red}directory doesn't exist${reset}\n"
    fi
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
alias mcp=multiple_copy

jump() {
    cd "$(git rev-parse --show-toplevel)"
}

proj() {
    NAME=$1
    subl --project "${NAME}.sublime-project"
}
