# Šablona pro diplomovou práci na FS VŠB
Tato šablona vychází z nových pokynů (listopad 2021) děkana Fakulty strojní VŠB.

__DŮLEŽITÉ!!__ _Tato šablona je určena pro kompilátor XeLaTeX, jelikož využívá balíčku maker `\usepackage{fontspec}` a výchozí kompilátor pdfTeX tedy nebude fungovat. XeLaTeX obsahuje většina programů (ne-li všechny) specializované na tvorbu LaTeX dokumentů, jen nebývá defaultně vybrán._

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
