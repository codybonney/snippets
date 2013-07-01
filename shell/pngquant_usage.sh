#!/bin/sh

# http://pngquant.org
# finds all files with a png extension in the current directory and replaces them with optimized versions
pngquant --quality=90-100 --speed=1 ./*.png --ext .png -f