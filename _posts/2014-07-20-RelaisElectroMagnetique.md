---
layout: post  
category : velokino  
tags : ["étude","composante", "electrique" ]  
tagline: "Étude de composante ,  relais électrique"  
title : "Relais électromagnétique et dynamo"
---

Traduction et interprétation de l'article [(Don't buy, just make)](http://dontbuyjustmake.blogspot.ca/2013/02/zero-friction-bicycle-dynamo.html)

L'auteur décrit un processus de récupération électrique à partir d'élément magnétique et de bobine de cuivre.

Système simple efficace et bien décrit que je m'apprête à reproduire.

Voici un retranscription du circuit utilisé

![image](http://raw.githubusercontent.com/gllmAR/velokino/gh-pages/_posts/assets/2014-07-26_LED_Rectifier_Coil_Circuit.png)

Il est composé de trois partie essentiel
soit :

* LED 	
	* module alimenté
* Bridge rectifier
	* Sert à convertir le courant AC vers du DC 
	* plus d'info ici [wiki:diode Bridge](http://en.wikipedia.org/wiki/Diode_bridge)
* Coil métallique 
	* Lorsqu'il est induis d'un champs magnétique,  il transfers la variation de sa charge au module de rectification.  

Le mouvement de l'aimant induis une variation alternative qui doit être transformé en DC pour être utile avec de l'électronique.
	
Par contre,  il manque la la spécification des pièces utilisé 
	
À cela,  j'envisage d'ajouter un module de condensateur afin d'aplanir la charge électrique et ainsi réduire les pics.  	  




[don't buy just make](http://dontbuyjustmake.blogspot.ca/2013/02/zero-friction-bicycle-dynamo.html)