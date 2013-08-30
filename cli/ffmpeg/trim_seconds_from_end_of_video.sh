# will trim off everything after 7 seconds

ffmpeg -t 7 -y -i source.mov -vcodec copy -acodec copy source_trimmed.mov