#!/bin/bash
#input a audio file (in mp3 without the dash ) and output a waveform
ffmpeg -i $1.mp3  -y -filter_complex \
"aformat=channel_layouts=mono,showwavespic=s=800x200:colors=#0082F7" \
-frames:v 1 $1.png
