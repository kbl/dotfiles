## Installation ##

    cd ~
    git clone https://github.com/kbl/vim-configuration .dotfiles
    cd ~/.dotfiles
    # set proper ruby version
    rake

## Ruby version ##
Appropriate ruby version is required. Approppriate means that witch which vim was build. This could be checked with:

    vim --version | grep ruby

Otherwise some problems could occure with building Command-T vim plugin.

## Required packages ##

Some plugins require packages to be installed on your machine:

    sudo apt-get install ruby1.9.1-dev # required by Command-T plugin
    sudo apt-get install exuberant-ctags # required by taglist plugin

