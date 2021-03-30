#!/bin/bash

read -p "This will wipe any dotfiles in your home. Are you sure you want to run this? y/n  " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]

then
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	cp .bashrc ~/.bashrc
	cp .tmux.conf ~/.tmux.conf
fi
