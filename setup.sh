sudo apt install -yy emacs

rm -Rf ${HOME}/.emacs ${HOME}/.emacs.d/custom_confs

ln -s $PWD/emacs.el ${HOME}/.emacs
ln -s $PWD/custom_confs ${HOME}/.emacs.d/custom_confs

git remote set-url origin git@gitlab.com:posedao/emacs-config.git
