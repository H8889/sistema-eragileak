#!/bin/bash

for ruta in "$@"
do    
    if [ -f $ruta ]; then
        echo " $ruta edukia:"
        cat $ruta
    else
        echo ""
        echo "$ruta el fitxero no existe."
    fi
done