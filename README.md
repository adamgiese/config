# Adam's Linux Customizations


```bash
cd ~
git clone https://github.com/adamgiese/config
cd config
mv * .[^.]* ..
cd ..
rm -rf config
mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall! +qall 
ls
```
