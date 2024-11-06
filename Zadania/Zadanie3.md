# Zadanie z Programowania w Bashu
## Cel
Napisz skrypt w bashu, który spełnia poniższe wymagania.
## Wymagania
1. Napisz skrypt, który po uruchomieniu wyświetli prośbę o podanie imienia.
2. Skrypt powinien wyświetlić komunikat `Witaj, <imie>!, liczba liter w twoim inieniu to <liczba>` gdzie `<imie>` to imię podane przez użytkownika, a `<liczba>` to liczba liter w imieniu.
3. Skrypt powinien utworzyć folder o nazwie `<imie>` w bieżącym katalogu.
4. Skrypt powinien utworzyć plik `info.txt` w folderze `<imie>`.
5. Skrypt powinien zapisać w pliku `info.txt` komunikat będący wynikiem punktu 2.
6. Skrypt powinien wyświetlić komunikat `Utworzono folder <imie> i plik info.txt`.
np.
``` bash
$ ./imie.sh
Podaj imie: Jan
Witaj, Jan!, liczba liter w twoim inieniu to 3
Utworzono folder Jan i plik info.txt
```
# Przydatne polecenia
``` bash
wc
read
mkdir
touch
echo
```
## Instrukcje
1. Stwórz plik `imie.sh`.
2. Napisz skrypt za pomocą dowolnego edytora tekstu. Np nano lub Visual Studio Code przez WSL.
3. Uruchom skrypt.
Powodzenia!