#!/bin/sh
curl --output imageoptim-cli.zip https://codeload.github.com/JamieMason/ImageOptim-CLI/zip/1.6.19
unzip imageoptim-cli.zip
export PATH=$PATH:imageoptim-cli/bin