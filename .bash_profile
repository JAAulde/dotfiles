# .bash_profile

alias vi=vim

# homebrew installed PHP version
PHP_VER=php54

# add homebrew installed PHP bin to path for CLI PHP
PATH=$(brew --prefix $PHP_VER)/bin:$PATH
#add personal home bin for useful scripts and such
PATH=$HOME/bin:$PATH
export PATH

export SVN_EDITOR=vi
