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