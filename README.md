My portable *nix util configs
==============================

Install
-------

**Check out repository**
~~~~~~~~~~~
cd ~

git clone --recursive https://github.com/JAAulde/dotfiles 

--(OR)--

git clone https://github.com/JAAulde/dotfiles 
git submodule init 
git submodule update
~~~~~~~~~~~

**Create synlinks to files in dotfiles**

_ln -s ~/dotfiles/{$file} ~/{$file}_
~~~~~~~~~~~~
cd ~
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.vimrc ~/.vimrc
~~~~~~~~~~~~


Push modifications made at command line
---------------------------------------

~~~~~~~~~~~~
cd ~/dotfiles
git commit -m "<reason>"
git push origin master
~~~~~~~~~~~~


Get modifications from github
-----------------------------
~~~~~~~~~~~~
cd ~/dotfiles
git pull origin master
~~~~~~~~~~~~


Vim specifics
-------------

*Refer to [vimcasts](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)*

**Add submodule for pathogen plugin**
~~~~~~~~~~~~
cd ~/dotfiles
git submodule add <plugin-url> .vim/bundle/<plugin-name>
git add .
git commit -m "Install <plugin-name> bundle as a submodule."
git push origin master
~~~~~~~~~~~~

**Upgrade a plugin bundle**
~~~~~~~~~~~~
cd ~/.vim/bundle/<plugin-name>
git pull origin master
~~~~~~~~~~~~

**Upgrade all plugin bundles**
~~~~~~~~~~~~
git submodule foreach git pull origin master
~~~~~~~~~~~~


Things to check out
-------------------
[EditorConfig](http://editorconfig.org)
[rcm](https://github.com/thoughtbot/rcm)