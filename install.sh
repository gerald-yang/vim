#!/bin/bash

sudo apt update
sudo apt-get install -y git vim global python3-dev curl exuberant-ctags fontconfig

mkdir -p ~/.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp -r colors ~/.vim/
cp vimrc ~/.vimrc
mkdir -p ~/.fonts
cp Monaco_Linux.ttf ~/.fonts/
fc-cache -fv

setup_path=$(grep 'export PATH=$PATH:~/bin' ~/.bashrc)

if [ -z "$setup_path" ]; then
        echo 'export PATH=$PATH:~/bin' >> ~/.bashrc
fi

# Remove go env, switch to cursor
#echo "Install GO? y or n: "
#read INSTALL_GO
#if [ "$INSTALL_GO" = "y" ] ; then
#        sudo snap install go --classic
#        setup_gopath=$(grep 'export GOPATH' ~/.bashrc)

#        if [ -z "$setup_gopath" ]; then
#                echo 'export GOPATH=$(go env GOPATH)' >> ~/.bashrc
#        fi

#        echo "Install go packages"
#        go install golang.org/x/tools/gopls@latest
#        go install github.com/jstemmer/gotags@latest
#        go install golang.org/x/tools/cmd/goimports@latest
#        go install honnef.co/go/tools/cmd/staticcheck@latest
#        go install github.com/fatih/motion@latest
#        go install github.com/nsf/gocode@latest
#        go install golang.org/x/tools/cmd/guru@latest
#        go install golang.org/x/tools/cmd/gorename@latest
#        go install github.com/rogpeppe/godef@latest
#        go install github.com/kisielk/errcheck@latest
#        go install github.com/klauspost/asmfmt/cmd/asmfmt@latest
#        go install github.com/josharian/impl@latest
#        go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest
#        go install github.com/fatih/gomodifytags@latest
#        go install honnef.co/go/tools/cmd/keyify@latest
#        go install golang.org/x/lint/golint@latest
#fi

echo "-------------------------------------------------------------------"
echo "Please perform 'PlugInstall' in vim to install all plugins"
echo "Fix gtags issue: chmod +x ~/.vim/plugged/vim-gutentags/plat/unix/update_gtags.sh"

#if [ "$INSTALL_GO" = "y" ] ; then
#        echo ""
#        echo "For Golang plugin"
#        echo "modify ~/.vim/plugged/vim-go/ftplugin/go/commands.vim"
#        echo "comment out 'if go#package#InGOPATH()', this command gets error"
#fi

echo "-------------------------------------------------------------------"
