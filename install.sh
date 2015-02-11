#!/bin/bash
## Guardamos la configuración actual por si las flies
rm -r ~/.emacs.d.save
mv ~/.emacs.d ~/.emacs.d.save
mkdir -p ~/.emacs.d
for i in `ls *.el`
do
    echo "$i"
    cp $i ~/.emacs.d/
done

