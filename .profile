export NDK=~/Code/android-ndk-r7/
export SYSROOT=$NDK/platforms/android-8/arch-arm

if [ "$OSTYPE" == 'linux-gnu' ]
then
    export PATH=~/bin:$NDK:~/Code/android-sdk-linux/tools/:~/Code/android-sdk-macosx/platform-tools/:$PATH
elif [ "$OSTYPE" == 'darwin11' ]
then
    export PATH=~/bin:/usr/bin:$NDK:~/Code/android-sdk-macosx/tools/:~/Code/android-sdk-macosx/platform-tools/:$HOME/Library/Haskell/bin:/opt/local/bin:/opt/local/sbin:$PATH
fi

LANG=en_US.UTF-8

# export NODE_PATH="/opt/local/lib/node"
# export PYTHONSTARTUP=~/.pythonrc.py
