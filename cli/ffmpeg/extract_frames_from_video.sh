ffmpeg -i sourcefile.mov -y -ss 5 -an -f image2 -r 4 filename%03d.png

# -y
# Overwrite output files

# -ss position
# Seek to given time position in seconds. "hh:mm:ss[.xxx]" syntax is also supported

# -an
# Disable audio recording

# -f fmt
# Force format

# -r fps
# Set frame rate (Hz value, fraction or abbreviation), (default = 25)