# Android SDK/NDK dev env
if [ "$OSTYPE" == 'darwin12' ]
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
if [ "$OSTYPE" == 'darwin12' ]
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

# Functions
function h2d { echo "obase=10; ibase=16; $( echo "$*" | sed -e 's/0x//g' -e 's/\([a-z]\)/\u\1/g' )" | bc; }
function h2b { echo "obase=2; ibase=16; $( echo "$*" | sed -e 's/0x//g' -e 's/\([a-z]\)/\u\1/g' )" | bc; }
function b2d { echo "obase=10; ibase=2; "$*"" | bc; }
function b2h { echo "0x$(echo "obase=16; ibase=2;"$*"" | bc)"; }
function d2b { echo "obase=2; ibase=10; "$*"" | bc; }
function d2h { echo "0x$(echo "obase=16; ibase=10; "$*"" | bc)"; }
