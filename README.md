# Adam's Linux Customizations


```bash
cd ~
git clone https://github.com/adamgiese/config
cd config
mv * .[^.]* ..
cd ..
rm -rf config
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c "execute 'PluginInstall' | quitall!"
```
