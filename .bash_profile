# Updated by jiunwei on 2019-06-18

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

if [ -f /usr/local/bin/pyenv ]; then
  eval "$(pyenv init -)"
fi

export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if [ -f /usr/local/etc/bash_completion ]; then
  source /usr/local/etc/bash_completion
fi

alias ls='ls -FG'
alias ll='ls -l'
alias grep='grep --color=auto'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jiunwei/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jiunwei/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jiunwei/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jiunwei/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

PACKAGES_DIR=`python -c "import site; print(site.getsitepackages()[0])"`
if [ -f ~/anaconda3/bin/powerline-daemon ] && [ -f $PACKAGES_DIR/powerline/bindings/bash/powerline.sh ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . $PACKAGES_DIR/powerline/bindings/bash/powerline.sh
else
  PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
fi
