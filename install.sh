#!/bin/bash
## Guardamos la configuración actual por si las flies
rm -rf ~/.emacs.d.save
rm -f .emacs
mv ~/.emacs.d ~/.emacs.d.save
mkdir -p ~/.emacs.d
for i in `ls *.el`
do
    echo "$i"
    cp $i ~/.emacs.d/
done
cp configs.org ~/.emacs.d/
