%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Šablona pro diplomovou práci na VŠB-TUO
% by Jan Opletal
% 2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Konfigurační soubor .cls (class)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[Thesis class]

\LoadClass[a4paper,12pt,toc=listof,bibliography=totoc,twoside]{scrartcl} % twoside - pro oboustranný tisk
\usepackage[top=30mm, bottom=30mm, left=35mm, right=25mm]{geometry} % nastavení okrajů

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Fonty - text + matematika
\usepackage{fontspec}
\usepackage{fourier-otf} % hlavní font Utopia

\setsansfont{Drive}[BoldFont = Drive Medium] % font pro nadpisy
% \setmonofont[Scale=0.85]{Monaco} % monospace font

\usepackage{unicode-math}
% \setmathfont{}
\usepackage{amsmath}
\usepackage{siunitx}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\usepackage[babelshorthands=true]{polyglossia} 
\setdefaultlanguage{czech} % česká sazba
\usepackage{xevlna} % tvrdá mezera za předložkama

\usepackage[final]{pdfpages} % nahrání pdf (zadání)


\usepackage[singlespacing=true,automark]{scrlayer-scrpage}
\addtokomafont{pagehead}{}
\setkomafont{section}{\Large\sffamily\color{SchoolGreen}} % formátování nadpisů
\setkomafont{subsection}{\large\sffamily\color{SchoolGreen}} % formátování podnadpisů
\setkomafont{pageheadfoot}{% 
\normalfont\normalcolor\itshape\small} % formátování textu v záhlaví/zápatí
\setkomafont{pagenumber}{\normalfont\bfseries} % číslování stránek
\usepackage{lastpage}

\usepackage{lipsum} % vkládání vzorového textu (nepotřebné)
\usepackage{tikz,pgfplots} % programování grafů a diagramů
\pgfplotsset{compat = newest}
\usepackage{graphicx} % vkládání obrázků
\usepackage{placeins} % umístění obrázků \FloatBarrier
\usepackage{float} % umístění obrázků
\usepackage{xcolor} % barevné úpravy
\definecolor{SchoolGreen}{RGB}{0, 164, 153} % barva školní zelené - digital
% \definecolor{SchoolGreen}{cmyk}{94, 0, 48, 0} % barva školní zelené - tisk
\usepackage{microtype} % lepší sazba
\usepackage{bookmark} 
\usepackage{enumitem} % seznam
\usepackage{enumerate} % číslovaný seznam
\usepackage{tabularx} % tabulky
\usepackage{booktabs} % tabulky
\renewcommand{\arraystretch}{1.0}
\usepackage{listings} % vkládání kódu
\lstset{basicstyle=\footnotesize\ttfamily,breaklines=true}
\lstset{framextopmargin=50pt,frame=bottomline}
\usepackage{ragged2e} % zarovnání


\usepackage[margin=15pt,font=small,labelfont={bf,sf}]{caption} % popisky tabulek/obrázků 
%%% \caption[Tento text se objeví v seznamu]{Tento text se objeví pod obrázkem/tabulkou}
\usepackage{subcaption}

\usepackage{hyperref} % odkazy v pdf
\hypersetup{pdfborder = {0 0 0}}
\emergencystretch=1em 

\setlength{\jot}{10pt} % mezera mezi rovnicemi
% \renewcommand{\baselinestretch}{1.3} % řádkování
\usepackage{setspace}
\setstretch{1.3}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Další nastavení
\newcommand{\msym}[3]{\noindent\parbox[t]{3cm}{#1}\parbox[t]{9cm}{#2}\hfill\parbox[t]{2cm}{[#3]}\vspace{12pt}} %seznam symbolu
\newcommand{\msho}[2]{\parbox[t]{3cm}{#1}\parbox[t]{12cm}{#2}\vspace{12pt}\\} %seznam zkratek

\newcommand*{\supervisor}[1]{\gdef\@supervisor{#1}}
\newcommand*{\titleen}[1]{\gdef\@titleen{#1}}
\newcommand*{\titlecolor}[1]{\gdef\@titlecolor{#1}}
\newcommand*{\city}[1]{\gdef\@city{#1}}
\newcommand*{\osobcislo}[1]{\gdef\@osobcislo{#1}}
\newcommand*{\stprogram}[1]{\gdef\@stprogram{#1}}
\newcommand*{\schyear}[1]{\gdef\@schyear{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% úvodní strana
\newcommand{\firstpage}{
	\thispagestyle{empty} 
	{\centering
	\begin{figure}[ht!]
		\includegraphics[width=0.7\textwidth]{obrazky/FS 361-CZ-digital.eps} % digital
		% \includegraphics[height=30mm]{obrazky/FS 361-CZ-tisk.eps} % tisk
	\end{figure}
	\vspace{30mm}
	\Large\sffamily{
		\@author\\
	\vspace{20mm}
		\huge\textbf\@titlecolor\\
	\vspace{10mm}
		\Large Diplomová práce\\
	\vfill
		\@city~\the\year\\}
			}	
	\cleardoublepage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% titulní strana
\renewcommand{\maketitle}{
	\thispagestyle{empty} 
	{\centering
	\begin{figure}[ht!]
		\includegraphics[width=0.7\textwidth]{obrazky/FS 361-CZ-digital.eps} % digital
		% \includegraphics[height=30mm]{obrazky/FS 361-CZ-tisk.eps} % tisk
	\end{figure}
	\vspace{40mm}
	\huge\sffamily{
		\textbf\@title\\
	\vspace{5mm}
		\@titleen\\
		\large\sffamily
	\vfill
	\begin{tabularx}{\textwidth}{lX}
		Autor: & \@author\\
		Vedoucí práce: & \@supervisor
	\end{tabularx}\\
	\vspace{10mm}
		\@city~\the\year\\}
			}
	\cleardoublepage
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%