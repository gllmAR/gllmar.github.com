---
geometry: margin=2.5cm
papersize: letter
header-includes: |
    \usepackage{fancyhdr}
    \pagestyle{fancy}
	\lhead{\textbf{Feedback Cycles for Oscillographs \\ Cycles de feedback pour Oscillographes}}
	\chead{}
	\rhead{\textbf{Instrument interactif performé}\\ vidéo multicanaux, audio stéréo}
	\lfoot{\href{https://gllmar.github.io}{gllmar.github.io}}
	\cfoot{\thepage}
	\rfoot{\href{http://gllmar.github.io/projets/oscillo/}{oscillographe}}
	\renewcommand{\headrulewidth}{.5pt}
	\renewcommand{\footrulewidth}{.5pt}
	\usepackage{svg}
    \usepackage{arev}
	\usepackage[T1]{fontenc}
	\usepackage[french]{babel}
	\selectlanguage{french}
---



\begin{figure}[ht]
\begin{minipage}[b]{.5\textwidth}
\centering
\includegraphics[width=1\textwidth]{img/hexa_1.jpg}
\caption{monocanal, agora HQ, 2017}
\end{minipage}
\hfill
\begin{minipage}[b]{.5\textwidth}
\centering
\includegraphics[width=1\textwidth]{img/b_9_.jpg}
\caption{multicanaux, Bouill\#31, 2018}
\end{minipage}
\end{figure}



## Description 

*Feedback Cycles for Oscillographs* est un installe action où des formes géométriques lumineuses émergent par la manipulation du son. Oeuvrant sur les particularités du signal sonore tel que la phase, la fréquence et l'amplitude, Cycles de Feedback pour Oscillographes produit une synesthésie audio visuelle hypnotique de lignes tracées depuis la disparité stéréophonique. Activée par le mouvement, cette installe action d'Oscillographes autonome cherche à révéler l'intangible exprimé entre l'absence et le court-circuit. 

[Oscillographe](https://github.com/gllmAR/oscillographe) est un logiciel d'analyse audio temps réel qui fonctionne tel un oscilloscope tout en ajoutant l'accumulation temporelle, l'échantillonnage audio ainsi que la tridimensionnalité au moteur de visualisation. Programmée en C++ en utilisant [Openframeworks](http://openframeworks.cc) et fonctionnant sur un Raspberry Pi, la volonté d'utiliser ce type de matériel permet une distribution sonore vers des dispositifs de projection vidéo autonome.



## Déploiement
Cette installe action est dotée d'un déploiement flexible; dans sa mouture la plus simple, elle nécessite un espace scénique où une lumière tamisée dirigée sur le performeur l'éclaire et son matériel (une petite table et un vélo). Un système de sonorisation stéréophonique permet d'entendre le son produite alors qu'un projecteur vidéo grand format rend visible le résultat du logiciel Oscillographe. Dans sa mouture immersive, le nombre de projecteurs peut être varié en fonction de l'espace afin de rendre ce dernier baigné de projections (des configurations à 3, 5 ou 7 projecteurs vidéos sont envisageables). Le cas échéant, la salle doit avoir des murs où la projection vidéo est possible. 

