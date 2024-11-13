# Skrypty powłoki
## Spis treści
- [Jak stworzyć skrypt powłoki krok po kroku?](#jak-stworzyć-skrypt-powłoki-krok-po-kroku)
- [Jak uruchomić skrypt powłoki z dowolnego miejsca w systemie?](#jak-uruchomić-skrypt-powłoki-z-dowolnego-miejsca-w-systemie)
- [Jak uruchomić skrypt powłoki z argumentami?](#jak-uruchomić-skrypt-powłoki-z-argumentami)
- [Jak poprosić użytkownika o podanie argumentu?](#jak-poprosić-użytkownika-o-podanie-argumentu)
- 
## Jak stworzyć skrypt powłoki krok po kroku?
### 1. Stwórz plik `skrypt`.
``` bash
touch skrypt
```
### 2. Nadaj uprawnienia do uruchomienia skryptu.
``` bash
chmod +x skrypt
```
### 3. Otwórz plik `skrypt` za pomocą dowolnego edytora tekstu. Np nano lub Visual Studio Code przez WSL.
``` bash
nano skrypt
```
### 4. Napisz skrypt.
``` bash
#!/bin/bash
echo "Hello, World!"
```
### 5. Uruchom skrypt.
``` bash
./skrypt
```
## Jak uruchomić skrypt powłoki z dowolnego miejsca w systemie?
### 1. Przenieś skrypt do katalogu `/usr/local/bin`.
``` bash
sudo mv skrypt /usr/local/bin
```
### 2. Uruchom skrypt z dowolnego miejsca w systemie.
``` bash
skrypt
```
## Jak uruchomić skrypt powłoki z argumentami?
### 1. Napisz skrypt, który przyjmuje argumenty.
``` bash
#!/bin/bash
echo "Hello, $1!"
```
### 2. Uruchom skrypt z argumentem.
``` bash
./skrypt World
```
## Jak poprosić użytkownika o podanie argumentu?
### 1. Użyj polecenia `read`.
``` bash
#!/bin/bash
echo "Ile masz lat:"
read wiek
echo "Masz $wiek lat."
```
## Sterowanie przebiegiem skryptu
### 1. Pętla `for`.
``` bash
#!/bin/bash
for i in {1..5}
do
  echo "Liczba: $i"
done
```
### 2. Pętla `while`.
``` bash
#!/bin/bash
i=1
while [ $i -le 5 ]
do
  echo "Liczba: $i"
  i=$((i+1))
done
```
### 3. Pętla `until`.
``` bash
#!/bin/bash
i=1
until [ $i -gt 5 ]
do
  echo "Liczba: $i"
  i=$((i+1))
done
```
### 4. `select` i instrukcja `case`.
``` bash
#!/bin/bash
echo "Wybierz opcję:"
select opcja in "Opcja 1" "Opcja 2" "Opcja 3"
do
  case $opcja in
	"Opcja 1")
	  echo "Wybrano opcję 1."
	  ;;
	"Opcja 2")
	  echo "Wybrano opcję 2."
	  ;;
	"Opcja 3")
	  echo "Wybrano opcję 3."
	  ;;
	*)
	  echo "Nie ma takiej opcji."
	  ;;
  esac
done
```
### 5. Instrukcja `if`.
``` bash
#!/bin/bash
echo "Podaj liczbę:"
read liczba
if [ $liczba -gt 0 ]
then
  echo "Liczba jest większa od zera."
elif [ $liczba -lt 0 ]
then
  echo "Liczba jest mniejsza od zera."
else
  echo "Liczba jest równa zero."
fi
```