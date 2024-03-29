## Prerequisites
*   Vim 7.2 (not tested with other versions)
*   sqlftm depends on sqlparse: `pacman -S python-sqlparse`
*   LeaderF and fern depend on `nerd-fonts` Arch package group.
*   Some other plugins depends on other external programs/libraries. Please
    refer to plugins' documentation for more information.


## Installation
First of all you have to clone repository:

    git clone git://github.com/jmatraszek/vim.git .vim

and init submodules:

    git submodule init
    git submodule update

After that you have to make a symbolic link to vimrc file:

    ln -s .vim/vimrc ~/.vimrc

And create a directory for backup files:

    mkdir ~/.tmp-vim

If you do not want to use some of plugins you can remove them:
1.  Remove lines referring to particular submodule from .gitmodules
2.  Remove lines referring to particular submodule from .git/config
3.  Run *git rm --cached bundle/plugin-name*
4.  Commit to vim repository
5.  Delete untracked files *rm -rf bundle/plugin-name*


After deleting plugin you may want to delete that plugin's configuration from
.vimrc. That should be pretty easy since configuration options in my vimrc are
grouped by plugin.

## Update

    git submodule foreach git co master
    git submodule foreach git pull
    cd bundle/youcompleteme
    git submodule update --init --recursive
    ./install.py --rust-completer
    cd bundle/leaderf
    ./install.sh

