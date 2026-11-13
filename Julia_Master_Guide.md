# Julia -- Master Guide

## Ein praxisorientierter Einstieg in Julia

> **Ziel:** Dieses Dokument führt dich von den ersten Julia-Befehlen bis
> zu den wichtigsten Werkzeugen für eigene Projekte. Es ist als
> Lernskript und Nachschlagewerk gedacht: Lies die Kapitel der Reihe
> nach, probiere die Beispiele in der Julia-REPL aus und verändere den
> Code bewusst.

-   **Sprache:** Deutsch
-   **Voraussetzungen:** Keine Julia-Kenntnisse; grundlegende
    Programmierkenntnisse sind hilfreich, aber nicht erforderlich.
-   **Hinweis:** Julia entwickelt sich weiter. Prüfe bei
    versionsabhängigen Details die [offizielle
    Dokumentation](https://docs.julialang.org/).

------------------------------------------------------------------------

## Inhaltsverzeichnis

1.  [Was ist Julia?](#1-was-ist-julia)
2.  [Installation und
    Entwicklungsumgebung](#2-installation-und-entwicklungsumgebung)
3.  [REPL und erste Schritte](#3-repl-und-erste-schritte)
4.  [Variablen und Datentypen](#4-variablen-und-datentypen)
5.  [Operatoren und Ausdrücke](#5-operatoren-und-ausdrücke)
6.  [Strings und Zeichen](#6-strings-und-zeichen)
7.  [Kontrollstrukturen](#7-kontrollstrukturen)
8.  [Funktionen](#8-funktionen)
9.  [Arrays, Tupel und Dictionaries](#9-arrays-tupel-und-dictionaries)
10. [Broadcasting und Punkt-Syntax](#10-broadcasting-und-punkt-syntax)
11. [Comprehensions und Generatoren](#11-comprehensions-und-generatoren)
12. [Typen und Mehrfachdispatch](#12-typen-und-mehrfachdispatch)
13. [Fehlerbehandlung](#13-fehlerbehandlung)
14. [Module und Pakete](#14-module-und-pakete)
15. [Dateien und Ein-/Ausgabe](#15-dateien-und-ein-ausgabe)
16. [Datenanalyse und
    Visualisierung](#16-datenanalyse-und-visualisierung)
17. [Performance und Benchmarking](#17-performance-und-benchmarking)
18. [Parallelität und
    Nebenläufigkeit](#18-parallelität-und-nebenläufigkeit)
19. [Tests und Debugging](#19-tests-und-debugging)
20. [Projektstruktur und Best
    Practices](#20-projektstruktur-und-best-practices)
21. [Häufige Stolperfallen](#21-häufige-stolperfallen)
22. [Übungen mit Lösungen](#22-übungen-mit-lösungen)
23. [Lernpfad und Spickzettel](#23-lernpfad-und-spickzettel)
24. [Nützliche Ressourcen](#24-nützliche-ressourcen)

------------------------------------------------------------------------

# 1. Was ist Julia?

[Julia](https://julialang.org/) ist eine dynamische, allgemeine
Programmiersprache, die besonders für numerisches Rechnen,
wissenschaftliche Anwendungen, Datenanalyse und technische Berechnungen
entwickelt wurde. Sie lässt sich aber ebenso für Skripte, Webanwendungen
und allgemeine Software verwenden.

### Warum Julia?

-   **Hohe Rechenleistung:** Julia kann nach dem Kompilieren sehr
    effizienten Maschinencode erzeugen.
-   **Dynamische Nutzung:** Variablen benötigen normalerweise keine
    explizite Typdeklaration.
-   **Mehrfachdispatch:** Funktionen können anhand der Typen aller
    Argumente die passende Implementierung auswählen.
-   **Mathematische Ausdrucksweise:** Viele mathematische Operationen
    lassen sich knapp und lesbar formulieren.
-   **Interaktivität:** Die REPL eignet sich zum Ausprobieren und
    Erkunden.
-   **Ökosystem:** Es gibt Pakete für Statistik, Optimierung, Machine
    Learning, Visualisierung und vieles mehr.

Julia ist nicht einfach „Python in schnell". Besonders wichtig sind die
eigene Funktions- und Dispatch-Philosophie, 1-basierte Indizierung und
die Punkt-Syntax für elementweise Array-Operationen.

### Wann ist Julia sinnvoll?

  -----------------------------------------------------------------------
  Anwendungsfall                      Eignung
  ----------------------------------- -----------------------------------
  Numerische Berechnungen             Sehr gut

  Simulationen und Modellierung       Sehr gut

  Datenanalyse                        Gut bis sehr gut

  Machine Learning                    Gut, abhängig vom benötigten
                                      Ökosystem

  Allgemeine Skripte                  Gut

  Klassische Webentwicklung           Möglich, aber kleineres Ökosystem
                                      als bei etablierten Websprachen

  Frontend-Webentwicklung             Nicht der typische Einsatzzweck
  -----------------------------------------------------------------------

------------------------------------------------------------------------

# 2. Installation und Entwicklungsumgebung

## 2.1 Julia installieren

Die offiziellen Installationsinformationen findest du unter:

-   [Julia herunterladen](https://julialang.org/downloads/)
-   [Juliaup](https://github.com/JuliaLang/juliaup) -- offizieller
    Versionsmanager

Juliaup ist praktisch, wenn du Julia-Versionen verwalten oder zwischen
Versionen wechseln möchtest.

Nach der Installation sollte im Terminal beispielsweise Folgendes
funktionieren:

``` bash
julia
```

Mit `julia --version` kannst du die installierte Version anzeigen
lassen.

## 2.2 Entwicklungsumgebung

Du kannst Julia in verschiedenen Umgebungen verwenden:

-   **Julia REPL:** Die interaktive Konsole, ideal zum Lernen und
    Testen.
-   **Visual Studio Code:** Mit der Julia-Erweiterung eine komfortable
    Entwicklungsumgebung.
-   **Jupyter:** Interaktive Notebooks, beispielsweise mit dem Paket
    `IJulia`.
-   **Pluto.jl:** Reaktive Notebooks, besonders interessant für Lehre
    und Experimente.

Für den Einstieg reicht die Julia-REPL. Für größere Projekte ist VS Code
eine gute Wahl.

## 2.3 Dateien ausführen

Speichere folgenden Code in `hello.jl`:

``` julia
println("Hallo, Julia!")
```

Führe die Datei im Terminal aus:

``` bash
julia hello.jl
```

In der REPL kannst du eine Datei auch mit folgendem Befehl laden:

``` julia
include("hello.jl")
```

------------------------------------------------------------------------

# 3. REPL und erste Schritte

REPL steht für **Read--Eval--Print Loop**: Julia liest einen Ausdruck
ein, wertet ihn aus und zeigt das Ergebnis an.

Starte Julia im Terminal:

``` bash
julia
```

Gib anschließend ein:

``` julia
1 + 2
```

Ergebnis:

``` text
3
```

Weitere Beispiele:

``` julia
println("Hallo Welt!")
sqrt(16)
2^10
pi
```

### Nützliche REPL-Modi

  Modus           Eingabe   Zweck
  --------------- --------- -----------------------------------
  Julia-Modus     normal    Julia-Code ausführen
  Help-Modus      `?`       Hilfe zu Funktionen und Begriffen
  Shell-Modus     `;`       Shell-Befehle ausführen
  Package-Modus   `]`       Pakete verwalten

Beispiele:

``` julia
?println
```

Zeigt die Hilfe zu `println`.

``` julia
;pwd
```

Führt den Shell-Befehl `pwd` aus.

Mit `]` wechselst du in den Package-Modus. Mit `Backspace` kommst du
zurück.

------------------------------------------------------------------------

# 4. Variablen und Datentypen

## 4.1 Variablen

Variablen speichern Werte:

``` julia
name = "Julia"
alter = 25
temperatur = 21.5
ist_online = true
```

Julia benötigt keine vorherige Deklaration.

Variablennamen dürfen unter anderem Buchstaben, Zahlen und `_`
enthalten. Sie dürfen nicht mit einer Zahl beginnen.

Julia unterstützt Unicode-Bezeichner:

``` julia
α = 0.5
β = 2.0
```

Das ist insbesondere in mathematischem Code nützlich. Für allgemeine
Projekte sind gut lesbare Namen häufig praktischer.

## 4.2 Grundlegende Datentypen

  Typ         Beispiel    Bedeutung
  ----------- ----------- -----------------------
  `Int`       `42`        Ganzzahl
  `Float64`   `3.14`      Gleitkommazahl
  `Bool`      `true`      Wahrheitswert
  `Char`      `'A'`       Einzelnes Zeichen
  `String`    `"Hallo"`   Zeichenkette
  `Nothing`   `nothing`   Kein vorhandener Wert
  `Missing`   `missing`   Fehlender Datenwert

Beispiele:

``` julia
ganze_zahl = 42
kommazahl = 3.14
wahrheitswert = true
zeichen = 'A'
text = "Hallo"
kein_wert = nothing
fehlend = missing
```

Den Typ eines Wertes erhältst du mit `typeof`:

``` julia
typeof(42)       # Int64 auf vielen 64-Bit-Systemen
typeof(3.14)     # Float64
typeof("Hallo")  # String
```

Die konkrete Ganzzahlbreite hängt von der Plattform ab. Deshalb ist
`Int` oft die bessere Wahl als eine fest kodierte Breite.

## 4.3 Typkonvertierung

Mit `Int`, `Float64`, `String` usw. kannst du Werte konvertieren:

``` julia
Int(3.8)        # 3
Float64(42)     # 42.0
string(42)      # "42"
parse(Int, "42")
parse(Float64, "3.14")
```

Achtung: `Int(3.8)` schneidet den Nachkommateil ab. Für Rundungen gibt
es `round`:

``` julia
round(Int, 3.8)  # 4
floor(Int, 3.8)  # 3
ceil(Int, 3.2)   # 4
trunc(Int, 3.8)  # 3
```

## 4.4 Konstanten

Mit `const` markierst du eine globale Bindung als konstant:

``` julia
const MAX_VERSUCHE = 5
```

Das ist besonders bei globalen Konfigurationen sinnvoll. Für normale
lokale Variablen brauchst du `const` meistens nicht.

Wichtig: Bei einer konstanten Bindung zu einem veränderbaren Objekt wird
das Objekt nicht automatisch unveränderlich.

------------------------------------------------------------------------

# 5. Operatoren und Ausdrücke

## 5.1 Arithmetische Operatoren

  Operator   Bedeutung          Beispiel
  ---------- ------------------ ----------
  `+`        Addition           `3 + 2`
  `-`        Subtraktion        `3 - 2`
  `*`        Multiplikation     `3 * 2`
  `/`        Division           `3 / 2`
  `÷`        Ganzzahldivision   `7 ÷ 2`
  `%`        Restwert           `7 % 2`
  `^`        Potenz             `2^3`

Beispiele:

``` julia
7 / 2    # 3.5
7 ÷ 2    # 3
7 % 2    # 1
2^3      # 8
```

## 5.2 Vergleichsoperatoren

``` julia
5 == 5   # true
5 != 3   # true
5 < 8    # true
5 <= 5   # true
8 > 3    # true
8 >= 8   # true
```

Wichtig:

-   `=` weist einen Wert zu.
-   `==` vergleicht Werte auf Gleichheit.
-   `===` prüft Identität bzw. ob zwei Werte identisch sind.

## 5.3 Logische Operatoren

``` julia
true && false  # false
true || false  # true
!true          # false
```

`&&` bedeutet logisches UND, `||` logisches ODER und `!` Negation.

Julia wertet `&&` und `||` kurzschlussartig aus: Der zweite Ausdruck
wird nur ausgewertet, wenn er für das Ergebnis noch benötigt wird.

``` julia
x = 10
x > 0 && println("positiv")
```

## 5.4 Verkettete Vergleiche

Julia erlaubt mathematisch lesbare Vergleichsketten:

``` julia
0 < x < 100
```

Das entspricht inhaltlich:

``` julia
0 < x && x < 100
```

## 5.5 Zahlenliterale und Multiplikation

Julia erlaubt in vielen Fällen die implizite Multiplikation mit einer
Zahl:

``` julia
2x
3(x + 1)
2π
```

Das ist praktisch für mathematische Ausdrücke. In normalem
Anwendungscode ist `2 * x` oft eindeutiger.

------------------------------------------------------------------------

# 6. Strings und Zeichen

## 6.1 Strings erstellen

Strings stehen in doppelten Anführungszeichen:

``` julia
text = "Hallo Julia"
```

Ein einzelnes Zeichen vom Typ `Char` steht in einfachen
Anführungszeichen:

``` julia
zeichen = 'J'
```

## 6.2 String-Interpolation

Mit `$` kannst du Variablen in Strings einsetzen:

``` julia
name = "Alex"
alter = 20

println("Ich heiße $name und bin $alter Jahre alt.")
```

Ausdrücke werden mit `$()` eingebettet:

``` julia
println("2 + 3 = $(2 + 3)")
```

## 6.3 Strings verbinden

Mit `*` kannst du Strings verketten:

``` julia
vorname = "Ada"
nachname = "Lovelace"

voller_name = vorname * " " * nachname
```

Alternativ ist `string` nützlich:

``` julia
string("Version ", 1, ".", 2)
```

`+` ist in Julia nicht der normale String-Verknüpfungsoperator.

## 6.4 Mehrzeilige Strings

``` julia
nachricht = """
Hallo!
Das ist ein
mehrzeiliger Text.
"""
```

## 6.5 Nützliche String-Funktionen

``` julia
length("Julia")
uppercase("julia")
lowercase("JULIA")
strip("  Hallo  ")
replace("Hallo Welt", "Welt" => "Julia")
split("rot,grün,blau", ",")
join(["rot", "grün", "blau"], ", ")
startswith("Julia", "Ju")
endswith("Julia", "ia")
occursin("li", "Julia")
```

### Unicode-Hinweis

In Julia ist `length` bei Strings die Anzahl der Zeichen, nicht die
Anzahl der Bytes. UTF-8-Zeichen können unterschiedlich viele Bytes
benötigen.

``` julia
s = "Grüße"
length(s)
ncodeunits(s)
```

Bei Unicode ist nicht jeder gültige Index automatisch eine fortlaufende
Ganzzahl. Verwende beispielsweise `eachindex(s)` oder `nextind` und
`prevind`, wenn du Zeichen einzeln durchläufst.

------------------------------------------------------------------------

# 7. Kontrollstrukturen

## 7.1 `if`, `elseif`, `else`

``` julia
temperatur = 18

if temperatur < 0
    println("Frost")
elseif temperatur < 20
    println("Kühl")
else
    println("Warm")
end
```

Julia verwendet `end`, um viele Kontrollstrukturen abzuschließen.

Wichtig: Bedingungen in `if` müssen vom Typ `Bool` sein. Zahlen werden
nicht automatisch als wahr oder falsch interpretiert.

## 7.2 Ternärer Operator

Für einfache Fallunterscheidungen:

``` julia
alter = 17
status = alter >= 18 ? "volljährig" : "minderjährig"
```

## 7.3 `while`-Schleife

``` julia
i = 1

while i <= 5
    println(i)
    i += 1
end
```

## 7.4 `for`-Schleife

``` julia
for i in 1:5
    println(i)
end
```

Über ein Array iterieren:

``` julia
namen = ["Ada", "Grace", "Linus"]

for name in namen
    println(name)
end
```

Index und Wert gleichzeitig:

``` julia
for (index, name) in enumerate(namen)
    println("$index: $name")
end
```

## 7.5 `break` und `continue`

``` julia
for i in 1:10
    i == 3 && continue
    i == 8 && break
    println(i)
end
```

-   `continue` überspringt den aktuellen Schleifendurchlauf.
-   `break` beendet die Schleife.

## 7.6 Bereiche und Schrittweiten

``` julia
1:5        # 1, 2, 3, 4, 5
1:2:9      # 1, 3, 5, 7, 9
10:-2:2    # 10, 8, 6, 4, 2
```

Ein Bereich ist zunächst ein Bereichsobjekt und nicht zwingend ein neu
angelegtes Array.

------------------------------------------------------------------------

# 8. Funktionen

Funktionen sind ein zentraler Bestandteil von Julia.

## 8.1 Funktion definieren

``` julia
function addiere(a, b)
    return a + b
end
```

Aufruf:

``` julia
ergebnis = addiere(3, 4)
```

Das letzte ausgewertete Ergebnis einer Funktion wird automatisch
zurückgegeben. `return` ist daher optional:

``` julia
function quadrat(x)
    x^2
end
```

## 8.2 Kurzschreibweise

``` julia
addiere(a, b) = a + b
quadrat(x) = x^2
```

## 8.3 Typannotationen

Du kannst Argumenttypen und Rückgabetypen angeben:

``` julia
function verdopple(x::Int)::Int
    return 2 * x
end
```

Typannotationen sind nicht grundsätzlich erforderlich. Sie sind
sinnvoll, wenn eine Funktion bewusst nur bestimmte Typen akzeptieren
soll oder wenn sie die Schnittstelle klarer machen.

## 8.4 Optionale Argumente

``` julia
function begruessung(name, gruss = "Hallo")
    "$gruss, $name!"
end

begruessung("Ada")
begruessung("Ada", "Guten Morgen")
```

## 8.5 Keyword-Argumente

Keyword-Argumente werden durch ein Semikolon in der Funktionsdefinition
eingeleitet:

``` julia
function erstelle_profil(name; alter = nothing, aktiv = true)
    return (name = name, alter = alter, aktiv = aktiv)
end

erstelle_profil("Ada"; alter = 36)
```

## 8.6 Anonyme Funktionen

``` julia
x -> x^2
```

Beispiel mit `map`:

``` julia
zahlen = [1, 2, 3, 4]
quadrate = map(x -> x^2, zahlen)
```

## 8.7 Funktionen als Argumente

``` julia
function anwenden(f, x)
    f(x)
end

anwenden(quadrat, 5)
```

## 8.8 Mehrere Methoden einer Funktion

Julia erlaubt mehrere Methoden mit unterschiedlichen Argumenttypen:

``` julia
beschreibe(x::Int) = "Ganzzahl: $x"
beschreibe(x::String) = "Text: $x"

beschreibe(42)
beschreibe("Hallo")
```

Das führt zum Mehrfachdispatch, der später genauer erklärt wird.

------------------------------------------------------------------------

# 9. Arrays, Tupel und Dictionaries

## 9.1 Arrays

Ein eindimensionales Array:

``` julia
zahlen = [10, 20, 30, 40]
```

Zugriff erfolgt standardmäßig mit Index 1:

``` julia
zahlen[1]       # 10
zahlen[end]     # 40
zahlen[2:3]     # [20, 30]
```

Julia ist standardmäßig **1-basiert**, nicht 0-basiert.

Element ändern:

``` julia
zahlen[1] = 99
```

Element hinzufügen oder entfernen:

``` julia
push!(zahlen, 50)
pop!(zahlen)
```

Das Ausrufezeichen ist eine Konvention: Funktionen mit `!` verändern
häufig eines ihrer Argumente direkt.

## 9.2 Arrays erzeugen

``` julia
zeros(5)             # fünf Nullen
ones(3)              # drei Einsen
fill(7, 4)           # viermal 7
collect(1:5)         # Bereich in ein Array umwandeln
rand(5)              # fünf Zufallswerte
```

## 9.3 Mehrdimensionale Arrays

``` julia
matrix = [1 2 3; 4 5 6]
```

Zugriff:

``` julia
matrix[1, 2]   # 2
matrix[2, :]   # zweite Zeile
matrix[:, 1]   # erste Spalte
```

Dimensionen:

``` julia
size(matrix)
ndims(matrix)
length(matrix)
```

Julia speichert mehrdimensionale Arrays standardmäßig spaltenweise
(column-major).

## 9.4 Tupel

``` julia
person = ("Ada", 36)
```

Zugriff:

``` julia
person[1]
person[2]
```

Benannte Tupel:

``` julia
person = (name = "Ada", alter = 36)

person.name
person.alter
```

Tupel sind unveränderlich: Einzelne Elemente können nicht ersetzt
werden.

## 9.5 Dictionaries

``` julia
person = Dict(
    "name" => "Ada",
    "alter" => 36
)
```

Zugriff und Änderung:

``` julia
person["name"]
person["stadt"] = "London"
```

Prüfen, ob ein Schlüssel existiert:

``` julia
haskey(person, "name")
```

Sicherer Zugriff mit Standardwert:

``` julia
get(person, "beruf", "unbekannt")
```

Über Einträge iterieren:

``` julia
for (key, value) in person
    println("$key: $value")
end
```

Die Iterationsreihenfolge eines `Dict` sollte nicht als fachliche
Sortierung verstanden werden.

## 9.6 Sets

Ein `Set` speichert eindeutige Elemente:

``` julia
farben = Set(["rot", "blau", "rot"])
push!(farben, "grün")
```

Nützliche Operationen:

``` julia
union(Set([1, 2]), Set([2, 3]))
intersect(Set([1, 2]), Set([2, 3]))
setdiff(Set([1, 2, 3]), Set([2]))
```

------------------------------------------------------------------------

# 10. Broadcasting und Punkt-Syntax

Eines der wichtigsten Julia-Konzepte ist Broadcasting.

## 10.1 Normale Operationen

Bei Arrays bedeutet `*` nicht automatisch elementweise Multiplikation:

``` julia
A = [1 2; 3 4]
B = [5 6; 7 8]

A * B
```

Das ist Matrixmultiplikation.

## 10.2 Elementweise Operationen

Mit einem Punkt vor dem Operator wird elementweise gearbeitet:

``` julia
A .* B
A .+ B
A .- B
A ./ B
A .^ 2
```

Beispiel:

``` julia
zahlen = [1, 2, 3, 4]
quadrate = zahlen .^ 2
```

Ergebnis:

``` julia
[1, 4, 9, 16]
```

## 10.3 Funktionen broadcasten

``` julia
zahlen = [-2, -1, 0, 1, 2]
betragswerte = abs.(zahlen)
wurzelwerte = sqrt.([1, 4, 9, 16])
```

## 10.4 Broadcasting mit mehreren Arrays

``` julia
a = [1, 2, 3]
b = [10, 20, 30]

a .+ b
a .+ 10
```

Julia kann dabei auch einzelne Werte auf größere Arrays übertragen.

## 10.5 Verkettete Punkt-Syntax

Mehrere elementweise Operationen können fusioniert werden:

``` julia
result = sin.(x) .+ cos.(x) .* 2
```

Julia kann diese Operationen häufig ohne unnötige Zwischenarrays
ausführen.

**Merke:**

  Ausdruck   Bedeutung
  ---------- ---------------------------------------------
  `A * B`    Matrix-/allgemeine Multiplikation
  `A .* B`   elementweise Multiplikation
  `f(x)`     Funktion auf einem Argument
  `f.(x)`    Funktion elementweise auf Elemente anwenden

------------------------------------------------------------------------

# 11. Comprehensions und Generatoren

## 11.1 Array-Comprehension

``` julia
quadrate = [x^2 for x in 1:5]
```

Mit Bedingung:

``` julia
gerade_quadrate = [x^2 for x in 1:10 if iseven(x)]
```

## 11.2 Verschachtelte Comprehensions

``` julia
paare = [(x, y) for x in 1:3 for y in 1:2]
```

## 11.3 Generatoren

Ein Generator erzeugt Werte bei Bedarf, statt direkt ein vollständiges
Array anzulegen:

``` julia
generator = (x^2 for x in 1:1_000_000)
sum(x^2 for x in 1:100)
```

Generatoren sind besonders nützlich, wenn große Datenmengen verarbeitet
werden.

------------------------------------------------------------------------

# 12. Typen und Mehrfachdispatch

Julia besitzt ein leistungsfähiges Typsystem. Du kannst eigene Typen
definieren und Funktionen für unterschiedliche Typkombinationen
bereitstellen.

## 12.1 Eigene zusammengesetzte Typen

``` julia
struct Person
    name::String
    alter::Int
end

ada = Person("Ada", 36)
println(ada.name)
```

`struct` definiert einen unveränderlichen zusammengesetzten Typ.

## 12.2 Veränderbare Typen

Wenn Felder geändert werden sollen, verwendest du `mutable struct`:

``` julia
mutable struct Konto
    inhaber::String
    kontostand::Float64
end

konto = Konto("Alex", 100.0)
konto.kontostand = 150.0
```

## 12.3 Konstruktoren

``` julia
struct Rechteck
    breite::Float64
    hoehe::Float64
end

Rechteck(seite::Real) = Rechteck(Float64(seite), Float64(seite))

quadrat = Rechteck(5)
```

## 12.4 Abstrakte Typen

Abstrakte Typen dienen der gemeinsamen Einordnung anderer Typen:

``` julia
abstract type Form end

struct Kreis <: Form
    radius::Float64
end

struct RechteckForm <: Form
    breite::Float64
    hoehe::Float64
end
```

`Kreis` und `RechteckForm` sind Untertypen von `Form`.

## 12.5 Mehrfachdispatch

Julia kann anhand der Typen **aller Argumente** die passende Methode
auswählen:

``` julia
f(a::Int, b::Int) = "zwei Ganzzahlen"
f(a::Int, b::Float64) = "Ganzzahl und Float64"
f(a::AbstractString, b::AbstractString) = "zwei Strings"

f(1, 2)
f(1, 2.0)
f("A", "B")
```

Das ist ein Kernkonzept von Julia.

### Wann sollte man Typen verwenden?

-   Wenn Daten eine klar definierte Struktur besitzen.
-   Wenn eine Funktion nur für bestimmte Typen sinnvoll ist.
-   Wenn mehrere Implementierungen anhand der Argumenttypen gewählt
    werden sollen.
-   Wenn eine Schnittstelle verständlicher wird.

Nicht jede Variable braucht eine Typannotation. Julia ist bewusst
dynamisch nutzbar.

------------------------------------------------------------------------

# 13. Fehlerbehandlung

## 13.1 Fehler auslösen

``` julia
function teile(a, b)
    b == 0 && error("Division durch null ist nicht erlaubt.")
    a / b
end
```

Für bestimmte Fehlerarten gibt es eigene Exception-Typen, beispielsweise
`ArgumentError` oder `DomainError`.

``` julia
throw(ArgumentError("Ungültiges Argument"))
```

## 13.2 `try` und `catch`

``` julia
try
    zahl = parse(Int, "abc")
catch err
    println("Fehler: ", err)
end
```

## 13.3 `finally`

Ein `finally`-Block wird unabhängig davon ausgeführt, ob ein Fehler
aufgetreten ist:

``` julia
try
    println("Arbeite ...")
finally
    println("Aufräumen")
end
```

Wenn du einen Fehler nicht behandeln kannst, solltest du ihn nicht
einfach verschlucken. Häufig ist es sinnvoller, ihn weiterzugeben oder
mit zusätzlichem Kontext erneut auszulösen.

------------------------------------------------------------------------

# 14. Module und Pakete

## 14.1 Module

Module helfen dabei, Code zu strukturieren und Namenskonflikte zu
vermeiden.

``` julia
module Mathematik

export quadrat, kubik

quadrat(x) = x^2
kubik(x) = x^3

end
```

Speichere das beispielsweise als `Mathematik.jl`.

Laden:

``` julia
include("Mathematik.jl")
using .Mathematik

quadrat(4)
```

Der Punkt in `using .Mathematik` bedeutet, dass das Modul relativ zum
aktuellen Modul gesucht wird.

Alternativ:

``` julia
import .Mathematik
Mathematik.quadrat(4)
```

## 14.2 Pakete installieren

Wechsle in der REPL mit `]` in den Package-Modus:

``` text
add JSON3
```

Oder direkt im Julia-Code:

``` julia
using Pkg
Pkg.add("JSON3")
```

Ein Paket verwenden:

``` julia
using JSON3
```

## 14.3 Projektumgebungen

Für jedes Projekt ist eine eigene Paketumgebung sinnvoll:

``` julia
using Pkg
Pkg.activate(".")
Pkg.add("JSON3")
```

Julia legt dabei typischerweise `Project.toml` und `Manifest.toml` an.

-   `Project.toml` beschreibt direkte Abhängigkeiten und
    Projektinformationen.
-   `Manifest.toml` hält die konkret aufgelösten Paketversionen fest.

Beide Dateien sind für reproduzierbare Projekte wichtig und sollten bei
Anwendungen normalerweise mit versioniert werden.

## 14.4 Paketverwaltung im Package-Modus

  Befehl               Bedeutung
  -------------------- --------------------------------------
  `add Paketname`      Paket hinzufügen
  `remove Paketname`   Paket entfernen
  `status`             Installierte Abhängigkeiten anzeigen
  `update`             Abhängigkeiten aktualisieren
  `instantiate`        Projektabhängigkeiten installieren

------------------------------------------------------------------------

# 15. Dateien und Ein-/Ausgabe

## 15.1 Textdatei lesen

``` julia
inhalt = read("notiz.txt", String)
```

Zeilenweise lesen:

``` julia
for zeile in eachline("notiz.txt")
    println(zeile)
end
```

## 15.2 Datei schreiben

``` julia
write("ausgabe.txt", "Hallo Julia!\n")
```

Mit `open`:

``` julia
open("ausgabe.txt", "w") do datei
    write(datei, "Erste Zeile\n")
    write(datei, "Zweite Zeile\n")
end
```

Der `do`-Block sorgt dafür, dass die Datei nach der Verarbeitung wieder
geschlossen wird -- auch wenn ein Fehler auftritt.

## 15.3 Dateimodi

  Modus    Bedeutung
  -------- ---------------------------------------------
  `"r"`    Lesen
  `"w"`    Schreiben, vorhandenen Inhalt überschreiben
  `"a"`    An Datei anhängen
  `"r+"`   Lesen und Schreiben

## 15.4 Pfade

Nutze `joinpath`, statt Pfade manuell mit `/` zusammenzusetzen:

``` julia
pfad = joinpath("daten", "messwerte.txt")
```

Weitere nützliche Funktionen:

``` julia
pwd()
readdir()
isfile("daten.txt")
isdir("daten")
mkpath("daten/neu")
```

## 15.5 Kommandozeilenargumente

Argumente eines Skripts stehen in `ARGS`:

``` julia
println(ARGS)
```

Aufruf:

``` bash
julia script.jl hallo 123
```

Dann enthält `ARGS` die übergebenen Argumente als Strings.

------------------------------------------------------------------------

# 16. Datenanalyse und Visualisierung

Julia eignet sich gut für Datenanalyse. Viele Funktionen sind bereits in
Base verfügbar; für komplexere Aufgaben gibt es Pakete.

## 16.1 Statistische Grundfunktionen

``` julia
werte = [2, 4, 4, 6, 8]

sum(werte)
minimum(werte)
maximum(werte)
```

Für Mittelwert, Median und Standardabweichung:

``` julia
using Statistics

mean(werte)
median(werte)
std(werte)
var(werte)
```

## 16.2 Zufallszahlen

``` julia
using Random

rand()          # Zufallswert zwischen 0 und 1
rand(1:6)       # Zufällige Zahl von 1 bis 6
rand(1:6, 10)   # Zehn Würfe
```

Reproduzierbare Zufallszahlen:

``` julia
Random.seed!(1234)
rand(5)
```

## 16.3 Tabellen und CSV

Für Tabellen und CSV-Dateien sind beispielsweise diese Pakete
verbreitet:

-   `DataFrames.jl`
-   `CSV.jl`

Installation:

``` julia
using Pkg
Pkg.add(["DataFrames", "CSV"])
```

Beispiel:

``` julia
using DataFrames
using CSV

df = DataFrame(
    name = ["Ada", "Grace", "Linus"],
    alter = [36, 40, 55]
)

CSV.write("personen.csv", df)
df = CSV.read("personen.csv", DataFrame)
```

## 16.4 Visualisierung

Ein verbreitetes Visualisierungspaket ist `Plots.jl`:

``` julia
using Pkg
Pkg.add("Plots")
```

Beispiel:

``` julia
using Plots

x = 0:0.1:2π
y = sin.(x)

plot(x, y, label = "sin(x)", xlabel = "x", ylabel = "y")
```

Weitere Ökosysteme sind unter anderem `Makie.jl` und `StatsPlots.jl`.

------------------------------------------------------------------------

# 17. Performance und Benchmarking

Julia ist auf hohe Leistung ausgelegt. Damit das funktioniert, solltest
du einige Regeln kennen.

## 17.1 Funktionen verwenden

Performance-kritischen Code solltest du in Funktionen schreiben:

``` julia
function berechne_summe(n)
    summe = 0
    for i in 1:n
        summe += i
    end
    return summe
end
```

Aufruf:

``` julia
berechne_summe(1_000_000)
```

## 17.2 Globalen Zustand vermeiden

Globale Variablen können die Performance beeinträchtigen, insbesondere
wenn ihr Typ nicht feststeht.

Besser:

``` julia
function berechnung(wert)
    wert * 2
end

berechnung(10)
```

## 17.3 Typstabilität

Eine Funktion ist vereinfacht gesagt typstabil, wenn der Rückgabetyp
anhand der Eingabetypen vorhersehbar ist. Das hilft dem Compiler,
effizienten Code zu erzeugen.

## 17.4 BenchmarkTools

Für belastbare Messungen ist `BenchmarkTools.jl` hilfreich:

``` julia
using Pkg
Pkg.add("BenchmarkTools")
```

``` julia
using BenchmarkTools

@benchmark berechne_summe(1_000_000)
```

Der erste Funktionsaufruf kann wegen der JIT-Kompilierung deutlich
länger dauern. Benchmarking sollte deshalb wiederholte, vergleichbare
Messungen verwenden.

## 17.5 Allokationen beachten

Unnötige Speicherallokationen können Programme verlangsamen.
Broadcasting kann beispielsweise mehrere elementweise Operationen
fusionieren:

``` julia
y = sin.(x) .+ cos.(x)
```

Vermeide Optimierungen auf Verdacht. Miss zuerst und optimiere
anschließend die tatsächlich relevanten Stellen.

------------------------------------------------------------------------

# 18. Parallelität und Nebenläufigkeit

Julia bietet mehrere Möglichkeiten, Aufgaben parallel oder nebenläufig
auszuführen.

-   **Nebenläufigkeit (Concurrency):** Mehrere Aufgaben können sich
    zeitlich überlappen.
-   **Parallelität (Parallelism):** Mehrere Aufgaben laufen tatsächlich
    gleichzeitig, beispielsweise auf mehreren CPU-Kernen.

## 18.1 Mehrere Threads aktivieren

Starte Julia beispielsweise mit:

``` bash
julia --threads auto
```

Anzahl der Threads anzeigen:

``` julia
Threads.nthreads()
```

## 18.2 Threads verwenden

``` julia
Threads.@threads for i in 1:10
    println("Aufgabe $i auf Thread $(Threads.threadid())")
end
```

Die Ausführungsreihenfolge ist nicht garantiert. Vermeide es, mehrere
Threads ungeschützt dieselbe veränderbare Datenstruktur beschreiben zu
lassen.

## 18.3 Asynchrone Aufgaben

Mit `@async` kannst du Aufgaben nebenläufig planen:

``` julia
task = @async begin
    sleep(1)
    println("Fertig")
end

wait(task)
```

Das ist nicht automatisch dasselbe wie parallele Ausführung auf mehreren
CPU-Kernen.

Für den Anfang musst du Parallelität nicht sofort lernen. Zuerst sollten
Funktionen, Datenstrukturen und Performance-Grundlagen sitzen.

------------------------------------------------------------------------

# 19. Tests und Debugging

## 19.1 Einfache Tests

Julia besitzt das Standardmodul `Test`:

``` julia
using Test

@test 1 + 1 == 2
@test sqrt(9) == 3
```

Mehrere Tests gruppieren:

``` julia
using Test

@testset "Mathematik" begin
    @test 2 + 2 == 4
    @test 3 * 3 == 9
    @test isapprox(sqrt(2)^2, 2)
end
```

`isapprox` ist für Gleitkommazahlen häufig besser geeignet als ein
direkter Gleichheitsvergleich.

## 19.2 Assertions

``` julia
@assert length([1, 2, 3]) == 3
```

Wenn die Bedingung falsch ist, wird ein Fehler ausgelöst.

## 19.3 Debugging

Zum Debuggen kannst du zunächst Ausgaben verwenden:

``` julia
@show variable
@show typeof(variable)
```

Für umfangreicheres Debugging gibt es das Paket `Debugger.jl` und
Debugging-Unterstützung in VS Code.

## 19.4 Kleine Funktionen testen

Schreibe Funktionen möglichst so, dass sie unabhängig getestet werden
können. Das erleichtert Fehlersuche und Wiederverwendung.

------------------------------------------------------------------------

# 20. Projektstruktur und Best Practices

Ein kleines Julia-Projekt könnte so aussehen:

``` text
MeinProjekt/
├── Project.toml
├── Manifest.toml
├── README.md
├── src/
│   └── MeinProjekt.jl
├── test/
│   └── runtests.jl
├── data/
└── scripts/
    └── analyse.jl
```

Für ein echtes Julia-Paket ist die von Julia erzeugte Paketstruktur ein
guter Ausgangspunkt.

## 20.1 Beispiel für eine Quelldatei

`src/MeinProjekt.jl`:

``` julia
module MeinProjekt

export quadrat, mittelwert

using Statistics

quadrat(x) = x^2
mittelwert(werte) = mean(werte)

end
```

## 20.2 Beispiel für Tests

`test/runtests.jl`:

``` julia
using Test
using MeinProjekt

@testset "MeinProjekt" begin
    @test quadrat(4) == 16
    @test mittelwert([2, 4, 6]) == 4
end
```

## 20.3 Stilregeln

-   Schreibe kleine, klar abgegrenzte Funktionen.
-   Verwende sprechende Namen.
-   Vermeide unnötige globale Variablen.
-   Verwende `const` für geeignete globale Konstanten.
-   Nutze `joinpath` für plattformunabhängige Dateipfade.
-   Schreibe Tests für wichtige Funktionen.
-   Verwende Projektumgebungen und versioniere `Project.toml` sowie
    normalerweise `Manifest.toml`.
-   Nutze Broadcasting (`.`) bewusst.
-   Miss Performance, bevor du optimierst.
-   Dokumentiere öffentliche Funktionen.

## 20.4 Dokumentation schreiben

Julia unterstützt Docstrings:

``` julia
"""
    quadrat(x)

Gibt das Quadrat von `x` zurück.
"""
quadrat(x) = x^2
```

Die Dokumentation kannst du in der REPL aufrufen:

``` julia
?quadrat
```

------------------------------------------------------------------------

# 21. Häufige Stolperfallen

  -----------------------------------------------------------------------
  Stolperfalle                        Erklärung / Lösung
  ----------------------------------- -----------------------------------
  Index beginnt bei 0                 Julia-Arrays beginnen standardmäßig
                                      bei 1.

  `=` statt `==`                      `=` weist zu, `==` vergleicht.

  `*` statt `.*`                      `*` ist nicht automatisch
                                      elementweise Multiplikation.

  `+` für Strings                     Strings werden mit `*` oder
                                      `string(...)` verbunden.

  `if x` bei Zahlen                   Bedingungen müssen `Bool` ergeben.

  `length` bei Unicode                Zeichen und Bytes sind nicht
                                      dasselbe.

  Code nur global ausführen           Performance-kritischen Code in
                                      Funktionen schreiben.

  Ersten Aufruf benchmarken           JIT-Kompilierung berücksichtigen
                                      und wiederholt messen.

  `struct` verändern                  Normale `struct`s sind
                                      unveränderlich; bei Bedarf
                                      `mutable struct` nutzen.

  `nothing` und `missing` verwechseln `nothing` steht für keinen Wert;
                                      `missing` für fehlende Daten.

  `include` mit Paketverwaltung       `include` lädt Quelldateien; Pakete
  verwechseln                         werden über Umgebungen verwaltet.

  Thread-Ausgaben als geordnet        Thread-Ausführungsreihenfolge ist
  ansehen                             nicht garantiert.
  -----------------------------------------------------------------------

### `nothing` und `missing`

Diese beiden Werte haben unterschiedliche Bedeutungen:

``` julia
nothing  # kein Wert / kein Ergebnis
missing  # ein Datenwert fehlt
```

`missing` kann sich in Berechnungen fortpflanzen:

``` julia
missing + 2
```

Das Ergebnis ist ebenfalls `missing`.

------------------------------------------------------------------------

# 22. Übungen mit Lösungen

Versuche zuerst, die Aufgaben ohne Blick auf die Lösungen zu bearbeiten.

## Aufgabe 1 -- Variablen

Erstelle die Variablen `vorname`, `alter` und `studiert`. Gib
anschließend einen Satz mit allen drei Werten aus.

```{=html}
<details>
```
```{=html}
<summary>
```
Lösung anzeigen
```{=html}
</summary>
```
``` julia
vorname = "Alex"
alter = 21
studiert = true

println("$vorname ist $alter Jahre alt. Studiert: $studiert")
```

```{=html}
</details>
```
## Aufgabe 2 -- Bedingungen

Schreibe eine Funktion `bewerte(note)`, die folgende Rückgaben erzeugt:

-   Note 1 oder 2: `"gut"`
-   Note 3 oder 4: `"bestanden"`
-   Sonst: `"nicht bestanden"`

```{=html}
<details>
```
```{=html}
<summary>
```
Lösung anzeigen
```{=html}
</summary>
```
``` julia
function bewerte(note)
    if note <= 2
        return "gut"
    elseif note <= 4
        return "bestanden"
    else
        return "nicht bestanden"
    end
end
```

Für eine robuste Lösung solltest du zusätzlich festlegen, welche
Notenwerte überhaupt gültig sind.

```{=html}
</details>
```
## Aufgabe 3 -- Schleifen

Gib alle Zahlen von 1 bis 100 aus, die durch 3 teilbar sind.

```{=html}
<details>
```
```{=html}
<summary>
```
Lösung anzeigen
```{=html}
</summary>
```
``` julia
for i in 1:100
    if i % 3 == 0
        println(i)
    end
end
```

Kürzer:

``` julia
for i in 3:3:100
    println(i)
end
```

```{=html}
</details>
```
## Aufgabe 4 -- Arrays

Erstelle ein Array mit den Zahlen 1 bis 10 und berechne ein neues Array
mit ihren Quadraten.

```{=html}
<details>
```
```{=html}
<summary>
```
Lösung anzeigen
```{=html}
</summary>
```
``` julia
zahlen = collect(1:10)
quadrate = zahlen .^ 2
```

Alternativ:

``` julia
quadrate = [x^2 for x in 1:10]
```

```{=html}
</details>
```
## Aufgabe 5 -- Funktionen

Schreibe eine Funktion, die eine Liste von Zahlen entgegennimmt und den
Durchschnitt zurückgibt.

```{=html}
<details>
```
```{=html}
<summary>
```
Lösung anzeigen
```{=html}
</summary>
```
``` julia
using Statistics

function durchschnitt(werte)
    isempty(werte) && throw(ArgumentError("Die Liste darf nicht leer sein."))
    mean(werte)
end
```

```{=html}
</details>
```
## Aufgabe 6 -- Dictionaries

Erstelle ein Dictionary, das drei Personen jeweils ein Alter zuordnet.
Gib alle Namen und Alter aus.

```{=html}
<details>
```
```{=html}
<summary>
```
Lösung anzeigen
```{=html}
</summary>
```
``` julia
alter = Dict(
    "Ada" => 36,
    "Grace" => 40,
    "Linus" => 55
)

for (name, jahre) in alter
    println("$name: $jahre")
end
```

```{=html}
</details>
```
## Aufgabe 7 -- Eigener Typ

Definiere einen Typ `Buch` mit den Feldern `titel` und `seiten`. Erzeuge
ein Buch und gib seinen Titel aus.

```{=html}
<details>
```
```{=html}
<summary>
```
Lösung anzeigen
```{=html}
</summary>
```
``` julia
struct Buch
    titel::String
    seiten::Int
end

buch = Buch("Julia lernen", 250)
println(buch.titel)
```

```{=html}
</details>
```
## Aufgabe 8 -- Kleines Abschlussprojekt

Schreibe ein kleines Konsolenprogramm, das:

1.  eine Liste von Zahlen enthält,
2.  Minimum, Maximum und Durchschnitt berechnet,
3.  alle Zahlen größer als der Durchschnitt ausgibt,
4.  die Ergebnisse in eine Textdatei schreibt.

```{=html}
<details>
```
```{=html}
<summary>
```
Mögliche Lösung
```{=html}
</summary>
```
``` julia
using Statistics

function analysiere(werte)
    isempty(werte) && throw(ArgumentError("Keine Werte vorhanden."))

    minimum_wert = minimum(werte)
    maximum_wert = maximum(werte)
    durchschnitt = mean(werte)
    groesser = filter(x -> x > durchschnitt, werte)

    open("analyse.txt", "w") do datei
        println(datei, "Minimum: $minimum_wert")
        println(datei, "Maximum: $maximum_wert")
        println(datei, "Durchschnitt: $durchschnitt")
        println(datei, "Über Durchschnitt: $groesser")
    end

    return (
        minimum = minimum_wert,
        maximum = maximum_wert,
        durchschnitt = durchschnitt,
        groesser = groesser
    )
end

werte = [2, 5, 8, 10, 15]
ergebnis = analysiere(werte)

@show ergebnis
```

```{=html}
</details>
```

------------------------------------------------------------------------

# 23. Lernpfad und Spickzettel

## 23.1 Empfohlene Reihenfolge

  -----------------------------------------------------------------------
  Etappe                  Themen                  Ziel
  ----------------------- ----------------------- -----------------------
  1                       REPL, Variablen, Typen, Kleine Ausdrücke
                          Operatoren              verstehen

  2                       Strings, Bedingungen,   Kleine Programme
                          Schleifen               schreiben

  3                       Funktionen, Arrays,     Probleme in Funktionen
                          Dictionaries            zerlegen

  4                       Broadcasting,           Daten effizient
                          Comprehensions          verarbeiten

  5                       Typen, Module,          Größere Programme
                          Fehlerbehandlung        strukturieren

  6                       Dateien, Pakete, Tests  Eigene Projekte
                                                  entwickeln

  7                       Datenanalyse,           Julia-Stärken praktisch
                          Performance             nutzen

  8                       Parallelität und        Fortgeschrittene
                          Spezialpakete           Anwendungen bauen
  -----------------------------------------------------------------------

## 23.2 Julia-Spickzettel

### Ausgabe und Hilfe

``` julia
println("Hallo")
@show x
?sum
typeof(x)
```

### Variablen und Konvertierung

``` julia
x = 42
const PI2 = 2pi
Int(3.5)
parse(Int, "42")
```

### Bedingungen

``` julia
if x > 0
    println("positiv")
else
    println("nicht positiv")
end
```

### Schleifen

``` julia
for i in 1:10
    println(i)
end

while x > 0
    x -= 1
end
```

### Funktionen

``` julia
f(x) = x^2

function g(x, y)
    return x + y
end
```

### Sammlungen

``` julia
a = [1, 2, 3]
t = (1, "A")
d = Dict("a" => 1)
s = Set([1, 2, 2])
```

### Arrays

``` julia
a[1]
a[end]
push!(a, 4)
length(a)
size(a)
```

### Broadcasting

``` julia
a .+ 1
a .* 2
sqrt.(a)
```

### Nützliche Funktionen

``` julia
sum(a)
minimum(a)
maximum(a)
sort(a)
reverse(a)
unique(a)
filter(>(2), a)
map(x -> x^2, a)
```

### Dateien

``` julia
read("datei.txt", String)
write("datei.txt", "Text")
readdir()
joinpath("ordner", "datei.txt")
```

### Pakete

``` julia
using Pkg
Pkg.activate(".")
Pkg.add("Paketname")
using Paketname
```

### Tests

``` julia
using Test
@test 1 + 1 == 2
```

------------------------------------------------------------------------

# 24. Nützliche Ressourcen

1.  **Offizielle Julia-Webseite:** https://julialang.org/
2.  **Offizielle Dokumentation:** https://docs.julialang.org/
3.  **Julia-Download und Installation:**
    https://julialang.org/downloads/
4.  **Julia-Paketverzeichnis:** https://juliahub.com/
5.  **JuliaAcademy:** https://juliaacademy.com/ -- Lernmaterialien und
    Kurse
6.  **Julia Discourse:** https://discourse.julialang.org/ -- Community
    und Fragen
7.  **Julia auf GitHub:** https://github.com/JuliaLang/julia

## Abschließender Tipp

Lerne Julia nicht nur durch Lesen. Schreibe die Beispiele selbst ab,
ändere Werte, provoziere Fehler und versuche, die Ursache zu verstehen.
Besonders wichtig ist, früh eigene kleine Projekte zu bauen -- zum
Beispiel einen Taschenrechner, einen Notenrechner, eine CSV-Auswertung
oder eine kleine Simulation.

**Wenn du die Kapitel 1 bis 11 sicher beherrschst, hast du eine solide
Grundlage, um eigenständig Julia-Programme zu schreiben.** Die späteren
Kapitel helfen dir dabei, daraus strukturierte, getestete und
leistungsfähige Projekte zu machen.
