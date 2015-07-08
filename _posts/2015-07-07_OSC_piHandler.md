---
layout: post  
category : dev
tags : ["raspberry pi","network", "osc" ]  
tagline: "server OSC raspberry pi"  
title : "PiaVI : Pi interactive Audio Visual Interface"
---


### Abstract

Créer en environnement de lecture audio visuel interactif à la fois autonome et asservie.

En X composantes

  - Service GPIO (protocol  OSC)
  - Webserver permetant controle de parametre (node.js, socket.io et OSC)
  - Module simplifié de lecture et de sythèse sonore  (pure data vanilla?)
  - Module de lecture vidéo  (omx player osc wrapper?)


expose ses paramètre modifiable à une interface web

Communique bidirectionnellement avec des paramètres interne via le protocol OSC.  

### pour commencer sur l'ordinateur localement (mac)

En partant de cette exemple : [https://github.com/toddtreece/osc-examples](https://github.com/toddtreece/osc-examples)

* Installer node.js
télécharger l'installateur ici :
[https://nodejs.org/download/](https://nodejs.org/download/)

```
git clone https://github.com/toddtreece/osc-examples.git && cd osc-examples
npm install
```

pour effectuer le test sur
lancer le patch PD

```
node print.js
```


Pour le pi :
suivre d'abord ce guide
[https://learn.adafruit.com/node-embedded-development/installing-node-dot-js](https://learn.adafruit.com/node-embedded-development/installing-node-dot-js)
### liens

aide à configurer

[https://github.com/adafruit/Adafruit-Pi-Finder](https://github.com/adafruit/Adafruit-Pi-Finder)


à implémenter :

[https://learn.adafruit.com/raspberry-pi-open-sound-control/interacting-with-a-web-browser](https://learn.adafruit.com/raspberry-pi-open-sound-control/interacting-with-a-web-browser)

à fouiller :

[https://github.com/russellmcc/node-osc-min](https://github.com/russellmcc/node-osc-min)



OSC et GPIO :

[http://www.instructables.com/id/Raspberry-Pi-GPIO-home-automation/step6/Install-App/](http://www.instructables.com/id/Raspberry-Pi-GPIO-home-automation/step6/Install-App/)

[https://github.com/misterhay/RasCough/blob/master/RasCough.py](https://github.com/misterhay/RasCough/blob/master/RasCough.py)

[https://github.com/soundmaking/RPi8pinIO](https://github.com/soundmaking/RPi8pinIO)


audio :

[https://github.com/yomguy/PiPlayer](https://github.com/yomguy/PiPlayer)

[https://github.com/jacoscaz/osc-browser-synth](https://github.com/jacoscaz/osc-browser-synth)

Vidéo :

Video player OSC  (openframework et omxplayer)
[https://github.com/Hemisphere-Project/HPlayer](https://github.com/Hemisphere-Project/HPlayer)

basé sur : 
[https://github.com/jvcleave/ofxOMXPlayer](https://github.com/jvcleave/ofxOMXPlayer)


investiguer gstreamer

[https://wiki.matthiasbock.net/index.php/Hardware-accelerated_video_playback_on_the_Raspberry_Pi](https://wiki.matthiasbock.net/index.php/Hardware-accelerated_video_playback_on_the_Raspberry_Pi)

[http://www.onepitwopi.com/raspberry-pi/gstreamer-1-2-on-the-raspberry-pi/](http://www.onepitwopi.com/raspberry-pi/gstreamer-1-2-on-the-raspberry-pi/)

http://blog.pi3g.com/2013/08/ffmpeg-gstreamer-raspberry-pi-windows-desktop-streaming/

[http://rpiquadcopter.blogspot.fi/2014/06/raspberry-pi-camera-module-video.html](http://rpiquadcopter.blogspot.fi/2014/06/raspberry-pi-camera-module-video.html)

[https://github.com/avilleret/rpi_osc_video_player](https://github.com/avilleret/rpi_osc_video_player)

investiguer DBUS

http://dbus.freedesktop.org/doc/dbus-python/doc/tutorial.html
