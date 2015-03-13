---
layout: post  
category : numerique  
tags : ["software" ]  
tagline: "Version ami du mac"  
title : "Configuration Raspberry pie"
---
* #### Installer un OS «frais» sur le Rasberry pi

	* Télécharger rasbian  (debian based pi)
   		* [raspbian sur le site officiel](http://www.raspberrypi.org/downloads/)
	* Pour l'installation et le setup
		* [Apple Pi Baker](http://www.tweaking4all.com/hardware/raspberry-pi/macosx-apple-pi-baker/)
	
* #### Avoir accès et configurer le Pi 
	* Pour trouver le Pi sur son setup réseau à la manière «brute»
    	* [Angry ip Scanner](http://angryip.org)
	* ssh (dans le terminal)
		* `ssh pi@192.168.111.18`
			* oû 192.168.111.18 doit être remplacer par le Ip du raspberry pi
		* user : pi  
 		* pass : raspberry
 		* PS : S'assurer que sa fenêtre determinal support les couleur ANSI (Préférence terminal)    
	* une fois dans le Pi
		* updater
			* `sudo apt-get update `
			* `sudo apt-get upgrade `
	* 	Configurer le Pi (changer le mot de passe,  le nom du pi et booter en desktop?)
		* ` sudo raspi-config`
			* Expand the root partition to fill the disk
			* Start desktop on boot
			* Change the hostname
				* Pour reconnaitre le pi sur le reseau 
			* Change the default password
				* bonne pratique...
		* `sudo reboot`
		*  [info sur le raspi-config](http://elinux.org/RPi_raspi-config)
		

    
            
* #### Pour activer le VNC sur le pi
source :   [ http://dennistt.net/2013/09/15/raspberry-pi/](http://dennistt.net/2013/09/15/raspberry-pi/)

    
    [installer et configurer netatalk](http://www.raspberrypi.org/forums/viewtopic.php?f=36&t=26826)
   
	* installer les dépendances 
		* `sudo apt-get install netatalk x11vnc`
	* Configurer le mot de passe (suivre les instructions à l'écran)
		* `x11vnc -storepasswd `

	* Configurer l'auto start  
   		* `sudo mkdir ~/.config/autostart/`
   		* `sudo touch ~/.config/autostart/x11vnc.desktop`
   		* `sudo nano ~/.config/autostart/x11vnc.desktop`
   	
	* Coller ce bloque de texte 

            [Desktop Entry]
            Encoding=UTF-8
            Type=Application
            Name=X11VNC
            Comment=
            Exec=x11vnc -forever -usepw -display :0 -ultrafilexfer
            StartupNotify=false
            Terminal=false
            Hidden=false
		 
	* Configurer le service AVAHI
		* `sudo nano /etc/avahi/services/rfb.service `
	* Coller ce bloque de texte 

	
    		  <?xml version="1.0" standalone='no'?>
    		  <!DOCTYPE service-group SYSTEM "avahi-service.dtd">
    		  <service-group>
    		  	<name replace-wildcards="yes">%h</name>
    		  		<service>
    		  			<type>_rfb._tcp</type>
    		  			<port>5900</port>
    		  		</service>
    		  	</service-group>
    
    
        
* #### Pour le file sharing 
source : [http://raspberry.znix.com/2013/03/connecting-to-raspberry-pi-with-mac-os-x.html](http://raspberry.znix.com/2013/03/connecting-to-raspberry-pi-with-mac-os-x.html)

   	* `sudo apt-get install netatalk`     (si ce n'Est pas déjà fait) 
	* `sudo nano /etc/avahi/services/afpd.service`

			<?xml version="1.0" standalone='no'?><!--*-nxml-*-->
			<!DOCTYPE service-group SYSTEM "avahi-service.dtd">
			<service-group>
   				<name replace-wildcards="yes">%h</name>
   				<service>
      				<type>_afpovertcp._tcp</type>
      				<port>548</port>
   				</service>
			</service-group>

	* `sudo /etc/init.d/avahi-daemon restart`


* #### pour Fixer le panel dans lXDE
* Pas clair si ça marche ou pas...  Théoriquement faut passer par de l'affichage standard.

sudo mkdir ~/.config/lxpanel/
sudo mkdir ~/.config/lxpanel/LXDE
sudo cp -rp /etc/xdg/lxpanel/profile/LXDE/* ~/.config/lxpanel/LXDE/




* ####  Setup OwnCloud	
	[http://blog.petrockblock.com/2012/08/15/your-own-cloud-server-with-owncloud-on-the-raspberry-pi/](http://blog.petrockblock.com/2012/08/15/your-own-cloud-server-with-owncloud-on-the-raspberry-pi/) 
	* faire un dossier pour les fichiers à installer si ce n'est pas déjà fait
		* `mkdir src`
		* `cd src`
	* Cloner les ressources nécessaire pour rouler le script d'installation
		* `git clone https://github.com/petrockblog/OwncloudPie.git`
	* naviguer à l'intérieur du dossier	
		* `cd OwncloudPie ` 
	* s'assurer d'avoir **git** proprement installé 
		* `sudo apt-get update`
		* `sudo apt-get upgrade`
		* `sudo apt-get install -y git dialog`
	* mettre les permission d'execution sur le script
		* `chmod +x owncloudpie_setup.sh`
	* exécuter le script avec les privilèges administrateur
		* `sudo ./owncloudpie_setup.sh`  
  
* ####  retroPie 
   [http://blog.petrockblock.com/retropie/](http://blog.petrockblock.com/retropie/)  
    
	