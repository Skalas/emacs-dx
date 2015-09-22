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
## instalo org-mode
mkdir paquetes
mkdir snippets
cd paquetes
git clone https://github.com/jwiegley/org-mode.git && cd org-mode  && make autoloads && cd .. 
echo '========================================================='
echo '=====================org-mode============================'
echo '========================================================='
git clone https://github.com/yjwen/org-reveal.git && cd org-reveal && cp ox-reveal.el ../org-mode/lisp/ && cd ..
