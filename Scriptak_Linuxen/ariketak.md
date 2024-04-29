# Ariketak

- [Ariketak](#ariketak)
  - [Ariketa 1](#ariketa-1)
  - [Ariketa 2](#ariketa-2)
  - [Ariketa 3](#ariketa-3)
  - [Ariketa 4](#ariketa-4)
  - [Ariketa 5](#ariketa-5)
  - [Ariketa 6](#ariketa-6)
  - [Ariketa 7](#ariketa-7)

## Ariketa 1 

```bash
#!/bin/bash

clear

echo "zein erabiltzaile zara"
whoami 

echo "zure uneko direktorioa"
pwd
```
## Ariketa 2

```bash
#!/bin/bash

echo "sartu urte bat"
read URTEA

echo "sartu hilabete bat"
read HILABETEA

cal $HILABETEA $URTEA

```
## Ariketa 3

```bash
#!/bin/bash

echo "kaixo egunon emen zuk jarri dituzun bi izen komparatuko ditu, jarri lehenengoa"

read izena1

echo "horain jarri bigarren izena mesedez"

read izena2

if 
[ $izena1 == $izena2 ]; then
echo "kompatiblea zarete."

else
echo "ez zarete kompatibleak"

fi
```
## Ariketa 4

```bash
#!/bin/bash

echo "kaixo emen duzu kalkulagailu bat erraza, bakarrik egiten du 2 zenbaki kin, ahu jakinda, ere jakin bear dezu bakarrik egiten dula eragiketa simpleak, kenketa eta geiketa."

echo "lehenengoa jarri mesedez"
read -r numero1

echo "bigarrena"
read -r numero2

echo "horain jarri ze naidezun geiketa egiteko jarri iruzkin ahu +, kenketa egiteko jarri ahu -, biderketa egiteko jarri ahu *, eta azkenik zatiketa egiteko jarri ahu /"
read -r paracalculo

if [ "$paracalculo" = "*" ]; then
    expr "$numero1" \* "$numero2"
else
    expr "$numero1" "$paracalculo" "$numero2"
fi
```
## Ariketa 5

```bash
#!/bin/bash

echo " kaixo naibadezu ikustea ze permizo dituzun jarri zu naidezun ikusi ruta"

read ruta

ls -l $ruta
```
## Ariketa 6

```bash
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
```
## Ariketa 7

```bash
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
```