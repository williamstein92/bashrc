new () {
    mkdir $1
    cd $1
}

open_old() {
    path=$1
    cd ./__old__/${path} 
}

yo() {
    echo 'yo!'
}

O() {
    echo ':('
}
