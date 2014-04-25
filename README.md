Repository of unix dotfiles.  

Check out repository
~~~~~~~~~~~
git clone git://github.com/
~~~~~~~~~~~

Create synlink to file in dotfiles
~~~~~~~~~~~~
ln -s ~/dotfiles/<file> ~/<file>
~~~~~~~~~~~~

Commit changes
~~~~~~~~~~~~
git commit -m '<reason>'
git push origin master
~~~~~~~~~~~~

###Vim###

Refer to [vimcasts](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)

Add submodule for pathogen plugin
~~~~~~~~~~~~
cd ~/dotfiles
git submodule add <plugin-url> vim/bundle/<plugin-name>
git add .
git commit -m "Install <plugin-name> bundle as a submodule."
git push origin master
~~~~~~~~~~~~

Upgrade a plugin bundle
~~~~~~~~~~~~
cd ~/.vim/bundle/<plugin-name>
git pull origin master
~~~~~~~~~~~~

Upgrade all plugin bundles
~~~~~~~~~~~~
git submodule foreach git pull origin master
~~~~~~~~~~~~
