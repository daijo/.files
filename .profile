# Android SDK/NDK dev env
if [ "$OSTYPE" == 'darwin11' ]
then
    export NDK=~/Code/android-ndk-r7
    export PATH=$NDK:~/Code/android-sdk-macosx/tools/:~/Code/android-sdk-macosx/platform-tools/:$PATH
elif [ "$OSTYPE" == 'linux-gnu' ]
then
    export NDK=~/Code/android-ndk-r8
    export PATH=$NDK:~/Code/android-sdk-linux/tools/:~/Code/android-sdk-linux/platform-tools/:$PATH
fi

export SYSROOT=$NDK/platforms/android-8/arch-arm

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# Additonal PATH
if [ "$OSTYPE" == 'darwin11' ]
then
    export PATH=/usr/bin:$HOME/Library/Haskell/bin:/opt/local/bin:/opt/local/sbin:$PATH
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# To get CLI programs localized in English even if use other locale.
LANG=en_US.UTF-8

# AVR and Arduino dev env
export ARDUINODIR=~/Code/Arduino
export SERIALDEV=/dev/tty.usbserial-A4006DFy

# Work CVS env
export CVSROOT=:ext:danielh@cvs.indianpacific.com.au:/cvs
export CVS_RSH=/usr/bin/ssh

# export NODE_PATH="/opt/local/lib/node"
# export PYTHONSTARTUP=~/.pythonrc.py
