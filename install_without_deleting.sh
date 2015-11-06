#!/bin/bash
## Guardamos la configuración actual por si las flies
for i in `ls *.el`
do
    echo "$i"
    cp $i ~/.emacs.d/
done
