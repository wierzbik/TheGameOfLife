# TheGameOfLife
The Game Of Life - projekt symulujący "Grę w życie" wykonany podczas przebiegu toku studiów.
## Opis gry
Gra w życie jest przykładem aparatu komórkowego. Odbywa się ona na kwadratowej siatce wypełnionej komórkami, w której każda komórka może być żywa lub martwa. 
Ich zachowania warunkują następujące reguły:

* Komórka ożywa w przypadku, gdy ma dokładnie trzech żywych sąsiadów.
* Komórka przeżywa, gdy ma dwóch lub trzech żywych sąsiadów.
* Komórka umiera, gdy ma mniej sąsiadów niż dwoje — z samotności, lub gdy ma ich więcej niż czworo — z przeludnienia.

### Instrukcja
* W zmiennych "sizex" oraz "sizey" deklarujemy wymiary siatki oraz ilość dostępnych komórek.
* W zmiennej "steps" deklarujemy ilość "rund" życia symulowanej gry.
* W zmiennej "slowdown" deklarujemy długość trwania rundy.

Symulacja gry powstała przy pomocy MatLaba R2017a.
### Uruchomienie
W celu uruchomienia należy pobrać pliki life.m wraz z print_board.m, umieścić je w tym samym katalogu oraz przy pomocy MatLaba bądź Octave'a uruchomić plik life.m.
