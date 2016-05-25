# Updated by jiunwei on 2016-05-24

if [ -d /Applications/Postgres.app/Contents/Versions/latest/bin ]; then
  export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
  export DATABASE_URL=postgres://jiunwei:@localhost/jiunwei
fi

if [ -d ~/Library/Android/sdk ]; then
  export ANDROID_HOME=$HOME/Library/Android/sdk
  export ANDROID_SDK=$HOME/Library/Android/sdk
  export PATH=$PATH:~/Library/Android/sdk/tools:~/Library/Android/sdk/platform-tools
fi

if [ -d ~/bin/ndk ]; then
  export ANDROID_NDK=$HOME/bin/ndk
  export PATH=$PATH:~/bin/ndk
elif [ -d ~/Library/Android/sdk/ndk-bundle ]; then
  export ANDROID_NDK=$HOME/Library/Android/sdk/ndk-bundle
  export PATH=$PATH:~/Library/Android/sdk/ndk-bundle
fi

if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
  export WORKON_HOME=$HOME/.virtualenvs
  export PROJECT_HOME=$HOME/Dropbox/git
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

export NVM_DIR=$HOME/.nvm
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
