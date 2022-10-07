# 2137exe

Łopatologicznie napisany wajrus (konkretnie trojan) nawiązujący do memów z JP2.

Zmienia tapetę i puszcza muzykę w kółko.

## 🔽 Pobieranie

Release [tutaj](https://github.com/henior2/2137exe/releases/latest)

## 🧱 Budowanie

Trzeba znaleźć jakieś narzędzia do tego, póki co używałem `iexpress`, jednak ma problem z wykrywalnością (MS Defender go wykrywa jeśli ochrona w czasie rzeczywistym jest włączona).

Najpierw jednak trzeba odpalić `build_deps.bat`, który skopiuje `wscript` (interpreter VBS, możliwe że w późniejszych wersjach nie będzie wymagany) do folderu `src/`.

Jeśli chcemy po prostu uruchomić wirusa (przetestować czy coś), wystarczy uruchomić `src/install.vbs`.

Jeśli chcemy zrobić binarkę (`2137.exe`), musimy użyć właśnie `iexpress`.

[Ułomna nstrukcja tego procesu](.readme/instrukcja.png)

Potem najlepiej wywalić ikonkę i jakieś metadane używając [Resource Hakjera](http://www.angusj.com/resourcehacker/)

## 📂 Struktura projektu czy coś

```
2137exe
    |- .readme
        |- instrukcja.png
    |- lib - do zajumania
        |- sound.vbs
        |- wallpaper.vbs (czasami nie działa)
    |- src - domyśl się
        |- install.vbs - skrypt instalacyjny wajrusa
        |- 2137.vbs - główny skrypt wajrusa, odpalany po instalacji
        |- wall.vbs - chodzący w tle zmieniacz tapety
        |- papaj.png - tapeta
        |- barka.wav - puszczana w kółko na max głośność
    |- build_deps.bat - daje reszte rzeczy do src/
    |- README.md
    |- LICENSE
    |- .gitignore
```


## 📝 Do zrobienia

- [ ] Przepisać `install` w jakimś języku kompilowanym np Go