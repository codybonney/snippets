#!/bin/sh

# install brew if you haven't already
# http://brew.sh/
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

# install ffmpeg using brew
brew install ffmpeg \
    --with-freetype \
    --with-theora \
    --with-libvorbis \
    --with-libvpx \
    --with-rtpdump \
    --with-opencore-amr \
    --with-libvo-aacenc \
    --with-libass \
    --with-openjpeg \
    --with-schroedinger \
    --with-ffplay \
    --with-tools \
    --with-fdk-aac \
    --with-openssl \
    --with-opus

# example video conversion
# audio bitrate: 128k
# video bitrate: 1200k
# width: 730px
# height: 525px

ffmpeg -i inputFile.mov \
  -acodec libvorbis -ac 2 -ab 128k -ar 44100 \
  -b:v 1200k -s 730x525 outputFile.ogv