#!/bin/bash

jarraitu=0

while [ "$jarraitu" = 0 ]; do

    echo "Egunon emen ezan zer naidezun guk egitea,
    1 opzioia da karpetaren tamaina ikusi, 
    2 opzioia da fitzategia listatu, 
    3 opzioia da fitzategi bat sortu, 
    4 opzioia da karpeta batr sortu, 
    5 opzioia da karpeta/fitxategiak ezabartu, eta azkenik 6 opzioia da irtetea sistematik."

    read -r Opcion

    if [ "$Opcion" = 1 ]; then
        du -h
    elif [ "$Opcion" = 2 ]; then
        ls
    elif [ "$Opcion" = 3 ]; then
        echo "idatzi fitzategiaren izena izena"
        read Fitzategiarenizena
        touch $Fitzategiarenizena
    elif [ "$Opcion" = 4 ]; then
        echo "idatzi carpetaren izena"
        read carpetaizena
        mkdir $carpetaizena
    elif [ "$Opcion" = 5 ]; then
        echo "Idatzi emen fitzategia edo carpeta naidezuna ezabatzea"
        read ezabatu
        rmdir $ezabatu
    elif [ "$Opcion" = 6 ]; then 
        jarraitu=1
    else
        echo "Error"
    fi  

done