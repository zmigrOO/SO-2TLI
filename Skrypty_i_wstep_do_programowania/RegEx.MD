## RegEx, czyli wyrażenia regularne
### Co to jest RegEx?
RegEx to skrót od wyrażeń regularnych (ang. Regular Expressions). Jest to narzędzie, które pozwala na przeszukiwanie tekstu w poszukiwaniu wzorców. RegEx pozwala na tworzenie złożonych wzorców, które mogą być używane do:
- walidacji danych
- przeszukiwania tekstu
- zastępowania tekstu
- dzielenia tekstu na części
itp.

### Jak używać RegEx?
W BASHu RegEx jest najczęściej używany w połączeniu z poleceniem `grep`. Polecenie `grep` służy do przeszukiwania plików w poszukiwaniu wzorców. Przykładowe użycie:
``` bash
grep "wzorzec" plik.txt
ls | grep "wzorzec"
```
W powyższych przykładach `grep` przeszukuje plik `plik.txt` oraz listę plików w bieżącym katalogu w poszukiwaniu wzorca `wzorzec`.

### Podstawowe elementy RegEx
1. **Znaki literałowe** - znaki, które mają dokładnie taką samą wartość jak w tekście. Przykłady: `a`, `b`, `c`, `1`, `2`, `3`, `!`, `@`, `#`.
2. **Klasy znaków** - zestawy znaków, które mogą być używane w miejscu jednego znaku. Przykłady:
   - `.` - dowolny znak
   - `\d` - cyfra
   - `\D` - znak nie będący cyfrą
   - `\w` - znak alfanumeryczny
   - `\W` - znak nie będący alfanumeryczny
   - `\s` - biały znak
   - `\S` - znak nie będący białym znakiem
3. **Kwantyfikatory** - określają liczbę wystąpień poprzedzającego znaku. Przykłady:
   - `*` - zero lub więcej wystąpień
   - `+` - jedno lub więcej wystąpień
   - `?` - zero lub jedno wystąpienie
   - `{n}` - dokładnie `n` wystąpień
   - `{n,}` - co najmniej `n` wystąpień
   - `{n,m}` - od `n` do `m` wystąpień
4. **Kotwice** - znaki, które określają początek lub koniec tekstu. Przykłady:
   - `^` - początek tekstu
   - `$` - koniec tekstu
5. **Grupy** - umożliwiają grupowanie elementów RegEx. Przykłady:
   - `(abc)` - grupa znaków `abc`
   - `(a|b)` - znak `a` lub `b`
   - `(?:abc)` - grupa znaków `abc` bez zapisywania
6. **Znaki specjalne** - znaki, które mają specjalne znaczenie w RegEx. Przykłady:
   - `\` - znak ucieczki
   - `[]` - zakres znaków
   - `()` - grupa znaków
   - `|` - alternatywa
   - `{}` - kwantyfikator
   - `^` - negacja
   - `$` - koniec linii
   - `.` - dowolny znak
   - `*` - zero lub więcej wystąpień
   - `+` - jedno lub więcej wystąpień
   - `?` - zero lub jedno wystąpienie
Aby użyć znaku specjalnego jako znaku literałowego, należy poprzedzić go znakiem ucieczki `\`, np. `\*`, `\+`, `\?`, `\(`, `\\`.

### Przykłady użycia RegEx
1. **Sprawdzenie, czy tekst zawiera słowo "hello"**:
``` bash
echo "hello world" | grep "hello"
```
2. **Sprawdzenie, czy tekst zawiera cyfrę**:
``` bash
echo "hello 123" | grep "[0-9]"
```
3. **Sprawdzenie, czy linia nie zawiera litery 's'**:
``` bash
echo "hello world" | grep "^.*[^s].*$"
```
4. **Sprawdzenie, czy linia zawiera słowo "hello" na początku**:
``` bash
echo "hello world" | grep "^hello.*$"
```