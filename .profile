if [ "$OSTYPE" == 'darwin11' ]
then
    export NDK=~/Code/android-ndk-r7
elif [ "$OSTYPE" == 'linux-gnu' ]
then
    export NDK=~/Code/android-ndk-r7c
fi

export SYSROOT=$NDK/platforms/android-8/arch-arm

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

if [ "$OSTYPE" == 'linux-gnu' ]
then
    export PATH=$NDK:~/Code/android-sdk-linux/tools/:~/Code/android-sdk-macosx/platform-tools/:$PATH
elif [ "$OSTYPE" == 'darwin11' ]
then
    export PATH=/usr/bin:$NDK:~/Code/android-sdk-macosx/tools/:~/Code/android-sdk-macosx/platform-tools/:$HOME/Library/Haskell/bin:/opt/local/bin:/opt/local/sbin:$PATH
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

LANG=en_US.UTF-8

export CVSROOT=:ext:daijo@cvs.indianpacific.com.au:/cvs
export CVS_RSH=/usr/bin/ssh

# export NODE_PATH="/opt/local/lib/node"
# export PYTHONSTARTUP=~/.pythonrc.py
