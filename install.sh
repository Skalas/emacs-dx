#!/bin/bash
## Guardamos la configuración actual por si las flies
rm -r ~/.emacs.d.save
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
## instalo org-mode
mkdir paquetes
cd paquetes
git clone git://orgmode.org/org-mode.git && cd org-mode && git checkout maint &&make autoloads && cd .. 
echo '========================================================='
echo '=====================org-mode============================'
echo '========================================================='
git clone https://github.com/yjwen/org-reveal.git && cd org-reveal && git checkout stable && cp ox-reveal.el ../org-mode/lisp/ && cd ..
