### Definicja zmiennych i podstawowe instrukcje sterujące
#### definicja zmiennych:
``` js
let warunek = 2 > 1;
let tablica = [1, "hello", "✈️", true, 3.14];
```
#### podstawowe instrukcje sterujące:
 -  **if else** to podstawowa konstrukcja warunkowa
``` js
if (warunek) {
	// kod do wykonania jeśli warunek jest spełniony
} else {
	// kod do wykonania jeśli warunek nie jest spełniony
}
```
 - **switch case** to konstrukcja warunkowa dla wielu wartości
``` js
switch (wyrazenie) {
	case wartosc1:
		// kod do wykonania jeśli wyrazenie === wartosc1
		break;
	case wartosc2:
		// kod do wykonania jeśli wyrazenie === wartosc2
		break;
	default:
		// kod do wykonania jeśli wyrazenie nie pasuje do żadnej wartości
}
```
 - **pętle** to konstrukcje pozwalające na wielokrotne wykonanie kodu
 1. **for** wykonuje kod określoną ilość razy
``` js
for (let i = 0; i < 10; i++) {
	// kod do wykonania w każdej iteracji
}
```
 2. **while** wykonuje kod dopóki warunek jest spełniony
``` js
while (warunek) {
	// kod do wykonania w każdej iteracji
}
```
 3. **do while** wykonuje kod przynajmniej raz, a następnie dopóki warunek jest spełniony
``` js
do {
	// kod do wykonania w każdej iteracji
} while (warunek);
```
 4. **for each** wykonuje kod dla każdego elementu tablicy
``` js
tablica.forEach(elementTablicy => {
	// kod do wykonania dla każdego elementu tablicy
});
```