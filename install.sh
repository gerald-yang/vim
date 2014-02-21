git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
cp -r colors ~/.vim/
cp vimrc ~/.vimrc
mkdir -p ~/bin
cp vimindex ~/bin/
chmod +x ~/bin/vimindex
cp add_vim_path ~/bin/
echo "source ~/bin/add_vim_path" >> ~/.bashrc
echo "Perform 'BundleInstall' in vim to install all plugin"
