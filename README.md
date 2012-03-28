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
