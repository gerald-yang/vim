sudo apt update
sudo apt-get install -y git vim global python3-dev curl exuberant-ctags fontconfig
mkdir -p ~/.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp ycm_extra_conf.py ~/.vim/
cp -r colors ~/.vim/
cp vimrc ~/.vimrc
mkdir -p ~/bin
cp vimindex ~/bin/
cp copy-ycm-conf.sh ~/bin/
chmod +x ~/bin/vimindex
chmod +x ~/bin/copy-ycm-conf.sh
mkdir -p ~/.fonts
cp Monaco_Linux.ttf ~/.fonts/
sudo fc-cache -fv

setup_path=$(grep 'export PATH=$PATH:~/bin' ~/.bashrc)

if [ -z "$setup_path" ]; then
        echo 'export PATH=$PATH:~/bin' >> ~/.bashrc
fi

echo "-------------------------------------------------------------------"
echo "Please perform 'PlugInstall' in vim to install all plugins"
echo "Fix gtags issue: chmod +x ~/.vim/plugged/vim-gutentags/plat/unix/update_gtags.sh"
echo "For C++, please enable YouCompleteMe plugin in vimrc and compile it:"
echo "goto ~/.vim/plugged/YouCompleteMe and run 'python3 install.py --clang-completer'"
echo "-------------------------------------------------------------------"
