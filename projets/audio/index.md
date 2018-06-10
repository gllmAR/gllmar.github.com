---
layout: page
navtitle: audio
title: audio
---
<br>

<ul>
  {% assign sorted_tracks_alpha = site.audio | sort: 'year' %} 
  {% assign sorted_tracks_beta = sorted_tracks_alpha | reverse %}
  {% for tracks in sorted_tracks_beta %}
    <li> <a href="{{ tracks.url }}">{{ tracks.title }}</a> <br>
<audio controls  preload="none" >
    <source type="audio/mp3" src="{{ tracks.url | replace: '.html', '.mp3' | prepend: site.baseurl }}">
    <source type="audio/m4a" src="{{ tracks.url | replace: '.html', '.m4a' | prepend: site.baseurl }}">
    <source type="audio/ogg" src="{{ tracks.url | replace: '.html', '.ogg' | prepend: site.baseurl }}">
</audio>

    </li>
  {% endfor %}
</ul>