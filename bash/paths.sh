test_import

WORKBENCH_PATH="/Users/bill/workbench"
YOUVISIT_PATH="${WORKBENCH_PATH}/youvisit"
UNITY_PATH="${WORKBENCH_PATH}/unity"
SKELETON_PATH="${WORKBENCH_PATH}/__old__/skeleton_copy"

export NODE_PATH=$(npm root -g)
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_05.jdk/Contents/Home"
export PATH=$PATH+":~/.composer/vendor/bin/:$JAVA_HOME/bin:/usr/local/sbin:`brew --prefix`/lib/python2.7/site-packages"

export PYTHONPATH=:$PYTHONPATH+":"+`brew --prefix`/lib/python2.7/site-packages
