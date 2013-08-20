#!/bin/sh

ffmpeg -i pants.mov \
  -acodec libvorbis -ac 2 -ab 128K -ar 44100 \
  -b:v 1200k -s 730x525 pants.ogv