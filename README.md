# Šablona pro diplomovou práci na FS VŠB
Tato šablona vychází z nových pokynů (listopad 2021) děkana Fakulty strojní VŠB.

__DŮLEŽITÉ!! Šablona je určena pro kompilátor XeLaTeX, jelikož využívá balíčku maker `fontspec` a výchozí kompilátor pdfLaTeX tedy nebude fungovat. Distribuce Miktex (Windows) a Mactex (MacOS), které doporučuje většina zdrojů tento kompilátor obsahují.__

## Vstupní informace
V souboru `main.tex` naleznete úvodní katipolu "Informace", ve které vyplníte nutné informace ohledně Vašeho jména a diplomové práce. Doplňujte vždy do složených závorek, např. `\title{}`. Mějte na paměti, že anglický název obsahuje slova s velkými písmeny na začátku jednotlivých slov, jako je vidět níže. Název práce je nutno vyplnit dvakrát, a to v `\title{}` a `\titlecolor{}`. Tyto informace se vyskytují nejen na úvodních stránkách, ale také například v bibliografickém záznamu nebo záhlaví (`\lehead{\@author}`)

```tex
% Informace
\title{Zhodnocení možnosti použití katalyzátoru u moderního lokálního topidla spalujícího dřevo} % název práce
\titleen{Evaluation of the Possibility of Using a Catalyst in a Modern Local Wood-Burning Heater} % název práce anglicky
\titlecolor{\textcolor{SchoolGreen}{Zhodnocení možnosti použití katalyzátoru u moderního lokálního topidla spalujícího dřevo}} % název práce barevně
\author{Bc. Jan Opletal} % titul, jméno
\osobcislo{OPL0014} % osobní číslo
\supervisor{} % vedoucí diplomové práce
\schyear{2021/2022} % školní rok
\stprogram{N0713A070002 Energetické stroje a zařízení} % studijní program
\city{Ostrava}
\year=2022 % rok odevzdání diplomové práce
```

## Struktura dokumentu
V rámci přehlednosti a optimalizace rychlosti kompilace jsou v hlavním ROOT souboru `main.tex` nahrávány jednotlivé kapitoly. Tyto kapitoly jsou již řazeny dle pokynů pro vypracování závěrečné práce. Od posledních pokynů se například liší neuváděním zadání závěrečné práce.

```tex
\subfileinclude{kapitoly/biblio_zaznam}
\subfileinclude{kapitoly/seznam_znacek}
\subfileinclude{kapitoly/uvod}
\subfileinclude{kapitoly/kapitola_01}
\subfileinclude{kapitoly/kapitola_02}
...
\subfileinclude{kapitoly/zaver}
\subfileinclude{kapitoly/podekovani}
```
Dílčí soubory najdete ve složce `/kapitoly` a díky odkazu na soubor `main.tex`, který se nachází na prvním řádku každého podsouboru `% !TEX root= ../main.tex` lze kompilovat přímo z daného souboru, kompilace je tedy rychlejší a práce je přehlednější.
Dále musí každý soubor, který vkládáme příkazem `\subfileinclude{}` obsahovat:
```tex
\documentclass[main.tex]{subfiles}

\begin{document}
...
\end{document}
```

## Seznam značek a symbolů
Pro seznam značek a symbolů jsou předdefinované dva příkazy:
```tex
\msym{k}{Coulombova konstanta}{\si{\newton\meter\squared\per\coulomb\squared}}
...
\msho{H}{vodík (\(^1\)H)}
```
Díky balíčku maker `siunitx` lze jednotky zapisovat slovně. Například jednotku kg/s zapíšeme standartně `\(\mathrm{kg \cdot s^{-1}}\)`. S balíčkem `siunitx` lze stejnou jednotku zapsat `\si{\kilogram\per\second}`. Ovšem doporučuji pro celý dokument používat výhradně jeden způsob zapisování jednotek. Více naleznete v oficiální dokumentaci https://mirrors.nic.cz/tex-archive/macros/latex/contrib/siunitx/siunitx.pdf

## Záhlaví
Vzhledem k oboustrannému tisku, pro který je tato šablona nastavena, je přizpůsobeno i záhlaví.
```tex
\pagestyle{scrheadings}
\rohead{Diplomová práce}
\lehead{\@author}
\chead{}
\cfoot{}
\KOMAoptions{headsepline=0.5pt}
```
Příkaz `\rohead{Diplomová práce}` nám definuje, že na liché straně vpravo (right, odd) najdeme "Diplomová práce". Naopak výstupem příkazu `\lehead{\@author}` je Vaše jméno na sudé straně vlevo (left, even).
## Bibliografie

## Tipy
