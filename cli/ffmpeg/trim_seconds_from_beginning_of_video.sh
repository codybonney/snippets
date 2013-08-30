# will trim the first 5 seconds from the beginning of the video

ffmpeg -ss 5 -y -i source.mov -vcodec copy -acodec copy source_trimmed.mov