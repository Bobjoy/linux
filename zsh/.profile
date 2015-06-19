# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

export LC_ALL="en_US.UTF-8"

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Set JAVA_HOME
export JAVA_HOME="/usr/lib/jvm/java-7-openjdk-amd64"

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
export GVM_HOME="$HOME/.gvm"
[[ -s "$GVM_HOME/bin/gvm-init.sh" ]] && source "$GVM_HOME/bin/gvm-init.sh"

# Load RVM into a shell session *as a function*
export RVM_HOME="$HOME/.rvm"
[[ -s "$RVM_HOME/scripts/rvm" ]] && source "$RVM_HOME/scripts/rvm"

# This loads nvm
export NVM_HOME="$HOME/.nvm"
[ -s "$NVM_HOME/nvm.sh" ] && . "$NVM_HOME/nvm.sh"

# Autojump
[[ -s "$HOME/.autojump/etc/profile.d/autojump.sh" ]] && source "$HOME/.autojump/etc/profile.d/autojump.sh"

# Pythen version manager
#export PYENV_ROOT="$HOME/.pyenv"

#export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

echo
echo "=============== Quote Of The Day ==============="
echo
fortune
echo
echo "================================================"
echo

