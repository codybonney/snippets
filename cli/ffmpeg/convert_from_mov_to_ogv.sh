#!/bin/sh

# example video conversion
# audio bitrate: 128k
# video bitrate: 1200k
# width: 730px
# height: 525px

ffmpeg -i inputFile.mov -acodec libvorbis -ac 2 -ab 128k -ar 44100 -b:v 1200k -s 730x525 outputFile.ogv