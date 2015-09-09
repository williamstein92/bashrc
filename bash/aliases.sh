test_import

alias now="date +%k:%M3"

alias wd="cd ~/writingdesk"
alias yv="cd ${YOUVISIT_PATH}"
alias ut="cd ${UNITY_PATH}"
alias home="cd ~"
alias etc="cd /etc"
alias bash="cd /etc/bash"
alias snippets="cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User"

alias vv="cd ${WORKBENCH_PATH}/__old__/360video"

alias sdk="cd ${UNITY_PATH}/ovr/sdk"
alias vrlib="cd ${UNITY_PATH}/ovr/sdk/VRLib"

alias desk="cd ~/Desktop"
alias pics="cd ~/Pictures"
alias docs="cd ~/Documents"
alias dwn="cd ~/Downloads"

alias tc="pygmentize -O style=monokai -f terminal -g"
alias srv="php -S localhost:8000"

alias keys="less ~/Documents/keychain.json"

alias asana="python /usr/local/lib/python2.7/site-packages/automation/entry.py"

alias unity_app="/Applications/Unity/Unity.app/Contents/MacOS/Unity"
alias unity="unity -projectPath ${PWD}"

alias clear="osascript -e 'if application \"Terminal\" is frontmost then tell application \"System Events\" to keystroke \"k\" using command down'"

alias g="git"
alias gc=smart_checkout
alias gb="git branch"
alias gl="git log"
alias pull="git pull --rebase"
alias push="git push"

# app aliases

alias mcp=multiple_copy
alias _=open_old
alias py=smart_python
alias k=clear_and_list
alias wb=smart_workbench
alias cd=smart_cd
