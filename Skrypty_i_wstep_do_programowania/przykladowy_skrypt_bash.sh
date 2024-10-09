#!/bin/bash
# Skrypt zmieniający nazwy plików w bieżącym katalogu na małe litery
# Pętla przechodząca przez wszystkie pliki w bieżącym katalogu
for file in *; do
	# Sprawdzenie, czy plik zwykły istnieje
	if [ -f "$file" ]; then
		# Zmiana nazwy pliku na małe litery
		mv "$file" "$(echo $file | tr '[A-Z]' '[a-z]')"
	fi # Koniec sprawdzania, czy plik zwykły istnieje
done # Koniec pętli przechodzącej przez wszystkie pliki w bieżącym katalogu