---
layout: slides
title: Compression vidéo
description: Ressources entourant la compression vidéo appliquée au domaine des médias interactifs   
theme: simple
transition: slide

---


<section data-markdown>

##  Compression vidéo
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

* [Signaux analogues/digitaux](https://en.wikipedia.org/wiki/Video#Analog_video)
	* [transmission télévisuelle analogue](https://en.wikipedia.org/wiki/Analog_television)
* [résolutions](https://en.wikipedia.org/wiki/Computer_display_standard#/media/File:Vector_Video_Standards2.svg)
* [ratios image](https://en.wikipedia.org/wiki/Display_aspect_ratio)
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

![container codec](assets/container-codec.png)

</section>

<section data-markdown>

## Containers

| nom | extension |
| -	| -|
| QuickTime | .mov |
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

* [Encodage vidéo sans perte - lossless](https://en.wikipedia.org/wiki/List_of_codecs#Lossless_video_compression)
	* Apple Animation (QuickTime RLE)
	* CinemaDNG Raw (Adobe, Blackmagic)
	* séquence d'images (tiff, openexr)

*  [Encodage vidéo avec perte -lossy](https://en.wikipedia.org/wiki/List_of_codecs#Lossy_compression_2)
	* H.264&VP8
	* HEVC&VP9
	* proRes, dnxHD, cineform		
	* HAP & HAPQ		

</section>


<section data-markdown>

## intraframe compression

* Toute l'image individuellement compressée dans chaque image.
	* prores, dnxHD, photoJpeg, Apple intermediate codec (aic), cineform 	
* lossy demo? 

</section>	

<section data-markdown>

### [interframe](https://en.wikipedia.org/wiki/Inter_frame)
* image temporellement compressée, [ce qui change](http://dvd-hq.info/data_compression_3.php)
	* [images: I (clef), P (<-) et B(<->)](https://en.wikipedia.org/wiki/Video_compression_picture_types)
	* [GOP : group of picture](https://en.wikipedia.org/wiki/Inter_frame#/media/File:IPB_images_sequence.png)
* usage créatif [1](https://www.youtube.com/watch?v=rMSsw4CZvKg), [2](https://www.youtube.com/watch?v=rSmEOk5AiN0), [3](https://www.youtube.com/watch?v=dNa0-xrKi3Q)

</section>	


<section data-markdown>
Usages 
### compression intra et inter image

comme: H264, H265, vp8, vp9 etc...

* Capture 
	* Certain dslr, caméra abordable.
	* favoriser l'option all-i si disponible
* Livrable/échange pour diffusion
* Archivage
* Lecture unidirectionnelle (vers l'avant)
* Streaming ([Vimeo](https://vimeo.com/help/compression), [YouTube](https://support.google.com/youtube/answer/1722171?hl=en) etc.)

</section>	


<section data-markdown>
Usages 
### compression uniquement intra image

comme: prores, dnxhd, [redcode](http://www.red.com/learn/red-101/redcode-file-format) etc...

* capture 
	* (certains enregistreur et caméra haut de gamme)
* édition vidéo
* colorimétrie
* livrable/échange entre monteurs

</section>	




<section data-markdown>
Usages
## décompression optimisée GPU

comme : [HAP & HAPq](http://vdmx.vidvox.net/blog/hap) ou [dxv](https://resolume.com/software/codec)

* lecture multicouche 
* haute résolution 
* effets GPU 
* requiert une carte graphique(vram) et un SSD rapide


</section>	

<section data-markdown>

## hap : [codec open-source](https://github.com/Vidvox/hap)

Compatible:
* [TouchDesigner](http://www.derivative.ca/wiki088/index.php?title=Hap)
* [max](https://cycling74.com/forums/announcing-hap-video-engine/)
* [OpenFrameworks](https://github.com/bangnoise/ofxHapPlayer)
* modul8, vdmx, madmapper, unity, isadora etc...
* [encoder avFoundation](https://github.com/Vidvox/hap-in-avfoundation/releases) 
</section>	

<section data-markdown>
Médiagraphie

### Guides sur la compression vidéo

* [Vimeo-compression-basic](https://vimeo.com/blog/post/video-compression-basics)
* [B&H crash course sur les codecs](https://www.youtube.com/watch?v=sisvOeZItb0)
* [techquickie sur la vidéo compressé](https://www.youtube.com/watch?v=qbGQBT2Vwvc)
* [techquickie sur interlace/prograssif](https://www.youtube.com/watch?v=H_o5h5SK_70)

</section>


<section data-markdown>

Médiagraphie

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




