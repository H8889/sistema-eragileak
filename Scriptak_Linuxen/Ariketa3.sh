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