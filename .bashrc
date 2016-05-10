exitstatus() {
	if [[ $? == 0 ]]; then
		echo 39
	else
		echo 32
	fi
}

export PS1="\e[$(exitstatus)m>\e[0m"
export LS_OPTIONS='--color=auto -a'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'

ls-and() {
	CMD=$1
	shift
	$CMD "${@}"
	ls
}
alias ls+=ls-and

alias srv="python -m http.server"
alias utime="date +%s"
alias cd="ls+ builtin cd"
alias mv="ls+ mv"
alias rm="ls+ rm"
alias mkdir="ls+ mkdir"

alias vi="ls+ vi"
alias ipy="ls+ ipython"
alias py="ls+ python"
alias rkt="ls+ racket"
alias cj="ls+ lein repl"
alias clj=cj
alias sizeof='du -k'
alias sicp="cd ${WORKBENCH}/rkt/sicp/"

alias d=cd
alias dd="d .."
alias s=ls
alias w=wb
alias h="d ~"
alias c="ls+ clear"
alias m=mv
alias md=mkdir
alias r="rm -r"

alias wp="w py"
alias wr="w rkt"
alias wc="w clj"

alias ai="apt-get install"
alias as="apt-cache search"

alias pi="pip install"

export LEIN_ROOT=yes

NOTHING_TO_CLEAN_MSG='...No.'
clean() {
	local FILE
	local DELETABLES=(*.pyc *.swp __pycache__/)
	for FILE in $DELETABLES; do
		echo $FILE
		if exists? $FILE $NOTHING_TO_CLEAN_MSG; then	
			rm -r $FILE
		fi
	done
}

ARG_MISSING_MSG="Classic human error."
isempty() {
	local ARG=$1

	if [[ -z "${ARG}" ]]; then
		return 0 
	else
		return 1 
	fi
}
alias empty?=isempty 

argexists() {
	local ARG=$1
	local MSG=$ARG_MISSING_MSG

	if empty? $ARG; then
		echo "${MSG}"
		return 1
	else
		return 0
	fi
}
alias arg?=argexists

FILE_MISSING_MSG="Can I recommend upgrading your RAM?"
fileexists() {
	local FILE=$1
	local MSG=$2

	if empty? $MSG; then
		MSG=$FILE_MISSING_MSG
	fi

	if ! arg? $FILE; then
		return 1
	fi
	
	if [[ -e "${FILE}" ]]; then
		return 0 
	else
		echo "${MSG}"
		return 1 
	fi
}
alias exists?=fileexists

# GIT

alias g=git
alias gs="g status"
alias gb="g branch"
alias gc="g checkout"

git-push() {
    MSG=$1

    if ! arg? $MSG; then
        return
    fi

    g add --all
    g commit -m "${MSG}"
    g push
}
alias g+=git-push

# VIM

vim-cmd(){
	CMD=$1
	FILE=$2

	if ! arg? $CMD; then
		return
	fi

	if ! exists? $FILE; then
		return
	fi

	echo "$CMD"

	vi "+$CMD" $FILE
}

vim-goto() {
	LINE=$1
	FILE=$2

	vim-cmd ":${LINE}" $FILE
}
alias v:=vim-goto

vim-at() {
	KEYWORD=$1
	FILE=$2

	vim-cmd "/$KEYWORD" $FILE
}
alias v@=vim-at

rc-at() {
	v@ $1 ~/.bashrc
}
alias b@=rc-at

rc-goto() {
	v: $1 ~/.bashrc
}
alias b:=rc-goto

vim-end() {
	FILE=$1
	vi + $FILE
}
alias v=vim-end

edit-bash() {
	v ~/.bashrc
	. ~/.bashrc
}
alias b=edit-bash
alias b!=". ~/.bashrc"

# WORKBENCH SETTINGS

WORKBENCH=~/workbench
w=$WORKBENCH
wb() {
	# go to workbench
	local SUBDIR=$1
	local FULLPATH=$WORKBENCH/$SUBDIR

	if empty? $SUBDIR; then
		cd $WORKBENCH
	else
		if ! exists? $FULLPATH; then
			return
		fi

		cd $FULLPATH
	fi
}

addwb() {
	# add file or directory to workbench
	local ARG0=$1
	local ARG1=$2

	local FILE
	local SUBDIR
	local FULLPATH

	if ! arg? $ARG0; then
		return
	fi

	if empty? $ARG1; then
		FILE=$ARG0
	else
		SUBDIR=$ARG0
		FILE=$ARG1
	fi

	FULLPATH=$WORKBENCH/$SUBDIR

	if ! exists? $FILE; then
		return
	fi

	if empty? $SUBDIR; then
		cp -r $FILE $WORKBENCH/
	else
		if ! exists? $FULLPATH; then
			return
		fi

		cp -r $FILE $FULLPATH
	fi
}
alias wb+=addwb

alias ucs="d Assets/Scripts"
alias uclj="d Assets/Arcadia/Scripts"

addtool() {
	local FILE=$1

	if ! exists? $FILE; then
		return
	fi

	cat $FILE >> $WORKBENCH/py/tools/tools.py
}
alias tool+=addtool

# HADOOP

export JAVA_HOME="/usr/lib/jvm/java-7-openjdk-armhf"

export HADOOP_HOME="${WORKBENCH}/hadoop"
export CLASSPATH="${HADOOP_HOME}/share/hadoop/common"
export HADOOP_INSTALL="${HADOOP_HOME}"
export HADOOP_MAPRED_HOME="${HADOOP_HOME}"
export HADOOP_COMMON_HOME="${HADOOP_HOME}"
export HADOOP_HDFS_HOME="${HADOOP_HOME}"
export YARN_HOME="${HADOOP_HOME}"

# SPARK

SPARK="${WORKBENCH}/spark"

export PATH="${PATH}:${SPARK}/bin"
export PYSPARK_DRIVER_PYTHON=ipython

# SDCARD

SDCARD="/mnt/emulated/0"
alias sd="cd $SDCARD"

addpic() {
	local FILE=$1

	if ! exists? $FILE; then
		return
	fi

	m $FILE $SDCARD/Pictures
}
alias pic+=addpic

alias ch-hist="$SDCARD/Android/data/com.android.chrome/app_chrome/Default/"

# NOTES

NOTES=$WORKBENCH/notes

NOTE_MSG="I'll just name it whatever I want, then..."
alias notes='cd $NOTES'
addnote() {
	local FILE=$1

	if empty? $FILE; then	
		FILE=$(utime)
		echo "${NOTE_MSG}"
	fi

	v $NOTES/$FILE 
}
alias note+=addnote

# TO DO

TODO=$NOTES/todo
alias todo='v $TODO'
addtodo() {
	local LINE=$1	
	echo -e "${LINE}\n" >> $TODO
}
alias todo+=addtodo

# USB SETTINGS

USB_DEVICE=/dev/block/sda1
USB_DIR=/mnt/storage

mountusb() {
	if mount | grep $USB_DEVICE > /dev/null; then
		umount $USB_DIR
	else
		mount -t vfat $USB_DEVICE $USB_DIR
	fi
}

addtousb() {
	local FILE=$1

	if ! exists? $FILE; then
		return
	fi
	
	cp $FILE $USB_DIR
}
alias usb+=addtousb
alias usb='cd $USB_DIR'
alias usb!=mountusb

# SHARE

SHARE=/system/share
alias shared='cd $SHARE'
addshare() {
	local FILE=$1	

	if ! exists? $FILE; then
		return
	fi
	
	cp $FILE $SHARE
}
alias share+=addshare

# MISC

ipy-cmd() {
	FILE=$1

	if ! arg? $FILE; then
		ipy
		return
	fi

	if ! exists? $FILE; then
		return
	fi

	ipy -c "from ${FILE%.*} import *" -i
}
alias p=ipy-cmd

rkt-cmd() {
	FIRST_FILE=$1
	SECOND_FILE=$2

	if ! arg? $FIRST_FILE; then
		rkt
		return
	fi

	if ! exists? $FIRST_FILE; then
		return
	fi

	if empty? $SECOND_FILE; then
		rkt -f $FIRST_FILE --repl
	else
		if ! exists? $SECOND_FILE; then
			return
		else
			rkt -f $FIRST_FILE -f $SECOND_FILE --repl
		fi
	fi
}
alias t=rkt-cmd

export PYENV_ROOT="${HOME}/.pyenv"
export PATH="${PYENV_ROOT}/bin:${PATH}"
eval "$(pyenv init -)"

