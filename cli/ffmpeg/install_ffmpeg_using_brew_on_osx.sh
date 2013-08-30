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