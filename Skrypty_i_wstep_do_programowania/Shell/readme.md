# Skrypty powłoki
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
