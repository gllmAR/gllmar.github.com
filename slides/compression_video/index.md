---
layout: slides
title: Compression vidéo
description: Ressources entourant la compression vidéo appliquée au domaine des médias interactifs   
theme: simple
transition: slide

---


<section data-markdown>

##  Compression Vidéo
### Applications aux médias interactifs  

#### Guillaume Arseneault 

[gllmar.github.io/slides/compression_video](/slides/compression_video/#/)

#### octobre 2017

</section>


<section data-markdown>

## Plan

* Signaux, résolutions et ratios
* Débit, cadence et trame
* Containers vs codecs
* Compression 
	* Lossy/lossless
	* Intraframe et Interframe
* Usages spécifiques
* Questions/commentaires et ...? 

</section>

<section data-markdown>

## Signaux, résolutions & ratios

* [Signaux analogue/digital](https://en.wikipedia.org/wiki/Video#Analog_video)
	* [transmission télévisuelle analogue](https://en.wikipedia.org/wiki/Analog_television)
* [résolutions](https://en.wikipedia.org/wiki/Computer_display_standard#/media/File:Vector_Video_Standards2.svg)
* [ratios-image](https://en.wikipedia.org/wiki/Display_aspect_ratio)
* [ratios-pixels](https://en.wikipedia.org/wiki/Pixel_aspect_ratio)

</section>

<section data-markdown>

## Débit, cadence et trame

* [Débit (bitrate)](https://en.wikipedia.org/wiki/Bit_rate#Video) 
* Profondeur de l'échantillonnage couleur 
	* [bit/canal](https://en.wikipedia.org/wiki/Color_depth)  
* [chroma subsampling](https://en.wikipedia.org/wiki/Chroma_subsampling#Sampling_systems_and_ratios) 
	* [4:4:4 vs 4:2:2 vs 4:2:0](https://upload.wikimedia.org/wikipedia/commons/0/06/Colorcomp.jpg)
	* [4:4:4 vs 4:4:4:4](https://en.wikipedia.org/wiki/Alpha_compositing)
* [Cadence](https://frames-per-second.appspot.com) 
* [Trame (progressif/entrelacé)](https://web.archive.org/web/20140222010640/http://neuron2.net/LVG/interlacing.html)
* [calcul de grosseur de fichier](https://toolstud.io/video/filesize.php?imagewidth=1920&imageheight=1080&framerate=29.97&timeduration=60&timeunit=seconds)
* [calcul de bitrate](https://toolstud.io/video/bitrate.php?imagewidth=1&imageheight=1&colordepth=24&framerate=29.97)

</section>



<section data-markdown>

## Container/Codec

![container-codec](assets/container-codec.png)

</section>

<section data-markdown>

## Containers

| nom | extention |
| -	| -|
| Quicktime | .mov |
| Matroska  | .mkv |
| Mpeg4		| .mp4 |
| Windows Media Video | .wmv |
| Audio Video Interleaved | .avi |
| Theora 	| .ogv |

[wiki:Comparison_of_video_container_formats](https://en.wikipedia.org/wiki/Comparison_of_video_container_formats)

</section>


<section data-markdown>
## Codecs
|Codec 				| compression		| usage 		|	 
| - 				|	-				|	 - 			|	
| H.264&VP8			|	intra & inter	| lecture<1080p 	|
| HEVC&VP9			|	intra & inter   | lecture<4k  	|
| proRes 			|	intra			| montage 		|
| dnxHD				|	intra 			| montage 		|
| HAP				|	intra 		 	| GPU&SSD :)	 |


</section>


<section data-markdown>

## lossless/lossy Codecs

* [Encodage video sans perte - lossless](https://en.wikipedia.org/wiki/List_of_codecs#Lossless_video_compression)
	* Apple Animation (QuickTime RLE)
	* CinemaDNG Raw (Adobe, Blackmagic)
	* séquence d'images (tiff, openexr)

*  [Encodage vidéo avec perte -lossy]()
	* H.264&VP8
	* HEVC&VP9
	* proRes, dnxHD, cineform		
	* HAP & HAPQ		

</section>


<section data-markdown>

## intraframe compression

* toute l'image individuellement compressée dans un frame.
	* prores, dnxHD, photoJpeg, Apple intermediate codec (aic), cineform 	
* lossy demo? 

</section>	

<section data-markdown>

### [interframe](https://en.wikipedia.org/wiki/Inter_frame)
* image temporellement compressée (ce qui change)
* [intraframe-vs-interframe compression](https://www.youtube.com/watch?v=ss8Re56zozY)
* [Delta encoding mpeg](http://dvd-hq.info/data_compression_3.php)
* [usage créatif1](https://www.youtube.com/watch?v=rMSsw4CZvKg)
* [usage créatif2](https://www.youtube.com/watch?v=rSmEOk5AiN0)
* [usage creatif3](https://www.youtube.com/watch?v=dNa0-xrKi3Q)

</section>	


<section data-markdown>

## Usages 

capture 

edition 

livrable


multipasse: 


</section>	





<section data-markdown>

## HAP & HAPq

codec open-source développé par vidvox axé sur le décodage GPU au lieu de CPU.

[code](https://github.com/Vidvox/hap)

largement adopté 
* [TouchDesigner](http://www.derivative.ca/wiki088/index.php?title=Hap)
* [max](https://cycling74.com/forums/announcing-hap-video-engine/)
* [OpenFrameworks](https://github.com/bangnoise/ofxHapPlayer)
* modul8, vdmx, madmapper, unity, isadora etc...
* [encoder avFoundation](https://github.com/Vidvox/hap-in-avfoundation/releases) 

</section>	



<section data-markdown>

## Médiagraphie

### Guides sur la compression vidéo

* [Vimeo-compression-basic](https://vimeo.com/blog/post/video-compression-basics)
* [Vimeo-compression-guideline](https://vimeo.com/help/compression)
* [youtube-compression-basics](https://support.google.com/youtube/answer/1722171?hl=en)
* [B&H crash course sur les codecs](https://www.youtube.com/watch?v=sisvOeZItb0)
* [techquickie sur la video compressé](https://www.youtube.com/watch?v=qbGQBT2Vwvc)
* [techquickie sur interlace/prograssif](https://www.youtube.com/watch?v=H_o5h5SK_70)

</section>


<section data-markdown>

## Médiagraphie

### Pour aller plus loin

* [Why Snow and Confetti Ruin YouTube Video Quality](https://www.youtube.com/watch?v=r6Rp-uo6HmI)
* [h264 vs h265](https://www.youtube.com/watch?v=Fawcboio6g4)
* [Videomaker introduction génerale](https://www.youtube.com/watch?v=fLlkgTRZSzc)
* [Vidéomake : bitrate ](https://www.youtube.com/watch?v=QOn-9anLFxA)
* [broadcast analogue avec esp8266](https://www.youtube.com/watch?v=SSiRkpgwVKY)
* [how-to datamosh](https://www.youtube.com/watch?v=tYytVzbPky8)

</section>







<section data-markdown>
## Guillaume Arseneault

### [gllmar.github.io](http://www.gllmar.github.io)

### [gllm@artificiel.org](mailto:guillaume@artificiel.org)

</section>




