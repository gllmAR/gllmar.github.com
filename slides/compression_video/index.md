---
layout: slides
title: Compression vidéo
description: Ressources entourant la compression vidéo appliquée au domaine du média interactif   
theme: white
transition: slide

---


<section data-markdown>

##  Compression Vidéo
### Applications au domaine du média interactif  

#### Guillaume Arseneault 

#### octobre 2017

</section>


<section data-markdown>

## Plan

* Signaux, résolutions et ratios
* Débit, cadence et trame
* containers et codecs
* Compression 
	* Lossy/lossless
	* Intraframe et Interframe
* Usages spécifique
* Questions/commentaires et ...? 


</section>

<section data-markdown>

## Signaux, résolutions & ratios

* Signaux 
	* analogue 
	* digital
* [résolutions](https://en.wikipedia.org/wiki/Computer_display_standard#/media/File:Vector_Video_Standards2.svg)
* [ratios](https://en.wikipedia.org/wiki/Aspect_ratio_(image))	: largeur/hauteur

</section>

<section data-markdown>

## Débit, cadence et trame

### [Débit (bitrate)](https://en.wikipedia.org/wiki/Bit_rate#Video) 

* [filesize](https://toolstud.io/video/filesize.php?imagewidth=1920&imageheight=1080&framerate=29.97&timeduration=60&timeunit=seconds)
* [bitrate](https://toolstud.io/video/bitrate.php?imagewidth=1&imageheight=1&colordepth=24&framerate=29.97)
* bit depth : 12bit /channel vs 8 bit /channel
* [chroma subsampling](https://en.wikipedia.org/wiki/Chroma_subsampling#Sampling_systems_and_ratios) : [4:4:4 vs 4:2:2 vs 4:2:0](https://upload.wikimedia.org/wikipedia/commons/0/06/Colorcomp.jpg)
* [Cadence](https://frames-per-second.appspot.com) 
* [Trame (progressif ou entrelacé](https://web.archive.org/web/20140222010640/http://neuron2.net/LVG/interlacing.html)

</section>






<section data-markdown>

## Container/Codec

![container-codec](assets/container-codec.png)

</section>

<section data-markdown>

## Container

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
|Codec 					| type 				| compression		| usage 		|	 
| - 					| -  				|					|	 - 			|	
| H.264&VP8				| lossy				|	intra & inter	| lecture<1080p 	|
| HEVC&VP9				| lossy  			|	intra & inter   | lecture<4k  	|
| proRes 				| lossy/lossless	|	intra			| montage 		|
| dnxHD					| lossy/lossless  	|	intra 			| montage 		|
| cineform				| lossy/lossless  	|	intra 			| gopro		|
| HAP					| lossy/lossless 	|	décompression 	| GPU |


</section>


<section data-markdown>

## Lossless/lossy


</section>

<section data-markdown>

## intra/inter 

### intraframe compression
* image individuellement compressée


### [interframe](https://en.wikipedia.org/wiki/Inter_frame)
* image temporellement compressée (ce qui change)
* [Delta encoding mpeg](http://dvd-hq.info/data_compression_3.php)
* [usage créatif?](https://www.youtube.com/watch?v=tYytVzbPky8)



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

* [Vimeo-compression-basic](https://vimeo.com/blog/post/video-compression-basics)
* [Vimeo-compression-guideline](https://vimeo.com/help/compression)
* [youtube-compression-basics](https://support.google.com/youtube/answer/1722171?hl=en)
* [Why Snow and Confetti Ruin YouTube Video Quality](https://www.youtube.com/watch?v=r6Rp-uo6HmI)
* [intraframe-vs-interframe compression](https://www.youtube.com/watch?v=ss8Re56zozY)
* [B&H crash course sur les codecs](https://www.youtube.com/watch?v=sisvOeZItb0)
* [techquickie sur la video compressé](https://www.youtube.com/watch?v=qbGQBT2Vwvc)
* [techquickie sur interlace/prograssif](https://www.youtube.com/watch?v=H_o5h5SK_70)
* [h264 vs h265](https://www.youtube.com/watch?v=Fawcboio6g4)
* [Videomaker introduction génerale](https://www.youtube.com/watch?v=fLlkgTRZSzc)
* [Vidéomake : bitrate ](https://www.youtube.com/watch?v=QOn-9anLFxA)

</section>



<section data-markdown>
## Guillaume Arseneault

### [gllmar.github.io](http://www.gllmar.github.io)

### [gllm@artificiel.org](mailto:guillaume@artificiel.org)

</section>




