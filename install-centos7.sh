sudo yum install -y git vim global global-ctags python3-dev
mkdir -p ~/.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp ycm_extra_conf.py ~/.vim/
cp -r colors ~/.vim/
cp vimrc-centos7 ~/.vimrc
mkdir -p ~/bin
cp vimindex ~/bin/
chmod +x ~/bin/*
mkdir -p ~/.fonts
cp Monaco_Linux.ttf ~/.fonts/
sudo fc-cache -fv

setup_path=$(grep 'export PATH=$PATH:~/bin' ~/.bashrc)

if [ -z "$setup_path" ]; then
        echo 'export PATH=$PATH:~/bin' >> ~/.bashrc
fi

echo "-------------------------------------------------------------------"
echo "Please perform 'PlugInstall' in vim to install all plugins"
echo "-------------------------------------------------------------------"
