# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

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

# set PATH so it includes user's private local/bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# set PATH so it includes user's private go/bin if it exists
if [ -d "$HOME/Applications/go" ] ; then
    export GOROOT="$HOME/Applications/go"
    PATH="$PATH:$GOROOT/bin"
    # set GOROOT_BOOTSTRAP path to go tool chain
    export GOROOT_BOOTSTRAP=$GOROOT
    # set GOPATH so it includes user's private go workspace
    export GOPATH="$HOME/go"
    PATH="$PATH:$GOPATH/bin"
fi

# set PATH so it includes /snap/bin if it exists
if [ -d "/snap/bin" ] ; then
    PATH="/snap/bin:$PATH"
fi
