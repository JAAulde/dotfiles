# .bash_profile

alias vi=vim

# homebrew installed PHP version
PHP_VER=php55

# add homebrew installed PHP bin to path for CLI PHP
PATH=$(brew --prefix $PHP_VER)/bin:$PATH
# add composer vendor bin
PATH=$HOME/.composer/vendor/bin:$PATH
#add personal home bin for useful scripts and such
PATH=$HOME/bin:$PATH
export PATH

export SVN_EDITOR=vi
