#!/bin/bash
## Guardamos la configuración actual por si las flies
rm -rf ~/.emacs.d.save
rm .emacs
mv ~/.emacs.d ~/.emacs.d.save
mkdir -p ~/.emacs.d
for i in `ls *.el`
do
    echo "$i"
    cp $i ~/.emacs.d/
done
cd ~/.emacs.d
## instalamos el nav-bar
wget https://emacs-nav.googlecode.com/files/emacs-nav-49.tar.gz
tar -zxvf emacs-nav-49.tar.gz
