#!/bin/bash
read zmienna
liczba_znakow=$(echo $zmienna | wc -m)
# liczba_znakow = liczba_znakow-1
liczba_znakow=$((liczba_znakow-1))
echo "Liczba znakow w pliku $zmienna wynosi $liczba_znakow"