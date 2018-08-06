# Updated by jiunwei on 2018-08-06

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

if [ -d /Applications/Postgres.app/Contents/Versions/latest/bin ]; then
  export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
  export PGHOST=localhost
fi

if [ -d ~/Library/Android/sdk ]; then
  export ANDROID_HOME=~/Library/Android/sdk
  export ANDROID_SDK=$ANDROID_HOME
  export ANDROID_SDK_ROOT=$ANDROID_HOME
  export PATH=$PATH:$ANDROID_HOME:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
fi

if [ -d ~/Library/Android/sdk/ndk-bundle ]; then
  export ANDROID_NDK=~/Library/Android/sdk/ndk-bundle
  export NDK_ROOT=$ANDROID_NDK
  export PATH=$PATH:$ANDROID_NDK
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
  if [ -f /usr/local/bin/python3 ]; then
    export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
  fi
  source /usr/local/bin/virtualenvwrapper.sh
fi

if [ -d ~/bin ]; then
  export PATH=$PATH:~/bin
fi

if [ -d ~/bin/flutter/bin ]; then
  export PATH=$PATH:~/bin/flutter/bin
fi

if [ -f ~/bin/subl ]; then
  export EDITOR='subl -w'
fi

if [ -f /usr/local/bin/rbenv ]; then
  eval "$(rbenv init -)"
fi

export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if [ -f /usr/local/bin/yarn ]; then
  export PATH="$PATH:`yarn global bin`"
fi

if [ -f /usr/local/etc/bash_completion ]; then
  source /usr/local/etc/bash_completion
fi

alias ls='ls -FG'
alias ll='ls -l'
alias grep='grep --color=auto'

# PS1='\[\033]0;${PWD//[^[:ascii:]]/?}\007\]' # set window title
# PS1="$PS1"'\n'                 # new line
# PS1="$PS1"'\[\033[32m\]'       # change to green
# PS1="$PS1"'\u@\h '             # user@host<space>
# PS1="$PS1"'\[\033[33m\]'       # change to brownish yellow
# PS1="$PS1"'\w'                 # current working directory
# PS1="$PS1"'\[\033[36m\]'       # change color to cyan
# if [ -n "$(type -t __git_ps1)" ] && [ "$(type -t __git_ps1)" = function ]; then
#   PS1="$PS1"'`__git_ps1`'        # bash function
# fi
# PS1="$PS1"'\[\033[0m\]'        # change color
# PS1="$PS1"'\n'                 # new line
# PS1="$PS1"'$ '                 # prompt: always $

if [ -f /usr/local/bin/powerline-daemon ] && [ -f /usr/local/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/local/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh
else
  PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
fi
