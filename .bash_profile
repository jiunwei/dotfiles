# Updated by jiunwei on 2016-07-20

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

if [ -d /Applications/Postgres.app/Contents/Versions/latest/bin ]; then
  export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
  # export DATABASE_URL=postgres://jiunwei:@localhost/jiunwei
  export PGHOST=localhost
fi

if [ -d ~/Library/Android/sdk ]; then
  export ANDROID_HOME=~/Library/Android/sdk
  export ANDROID_SDK=$ANDROID_HOME
  export ANDROID_SDK_ROOT=$ANDROID_HOME
  export PATH=$PATH:$ANDROID_HOME:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
fi

if [ -d ~/bin/android-ndk ]; then
  export ANDROID_NDK=~/bin/android-ndk
  export NDK_ROOT=$ANDROID_NDK
  export PATH=$PATH:$ANDROID_NDK
elif [ -d ~/Library/Android/sdk/ndk-bundle ]; then
  export ANDROID_NDK=~/Library/Android/sdk/ndk-bundle
  export NDK_ROOT=$ANDROID_NDK
  export PATH=$PATH:$ANDROID_NDK
fi

if [ -d /usr/local/Cellar/ant/1.9.7/bin ]; then
  export ANT_ROOT=/usr/local/Cellar/ant/1.9.7/bin
  export PATH=$PATH:$ANT_ROOT
fi

if [ -d ~/bin/cocos2d-x ]; then
  export COCOS_X_ROOT=/Users/jiunwei/bin
  export COCOS_CONSOLE_ROOT=$COCOS_X_ROOT/cocos2d-x/tools/cocos2d-console/bin
  export COCOS_TEMPLATES_ROOT=$COCOS_X_ROOT/cocos2d-x/templates
  export PATH=$PATH:$COCOS_CONSOLE_ROOT:$COCOS_TEMPLATES_ROOT
fi

if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
  export WORKON_HOME=~/.virtualenvs
  export PROJECT_HOME=~/Dropbox/git
  source /usr/local/bin/virtualenvwrapper.sh
fi

if [ -d ~/bin ]; then
  export PATH=$PATH:~/bin
fi

if [ -f ~/bin/subl ]; then
  export EDITOR='subl -w'
fi

if [ -f /usr/local/bin/rbenv ]; then
  eval "$(rbenv init -)"
fi

export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

if [ -f /usr/local/etc/bash_completion ]; then
  source /usr/local/etc/bash_completion
fi

alias ls='ls -FG'
alias ll='ls -l'

PS1='\[\033]0;${PWD//[^[:ascii:]]/?}\007\]' # set window title
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'\[\033[32m\]'       # change to green
PS1="$PS1"'\u@\h '             # user@host<space>
PS1="$PS1"'\[\033[33m\]'       # change to brownish yellow
PS1="$PS1"'\w'                 # current working directory
PS1="$PS1"'\[\033[36m\]'       # change color to cyan
PS1="$PS1"'`__git_ps1`'        # bash function
PS1="$PS1"'\[\033[0m\]'        # change color
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'$ '                 # prompt: always $
