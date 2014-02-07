#!/bin/sh

# codybonney.com/recursively-minify-php-files-using-a-shell-script/

# set source directory
if [ "$1" = "" ]
then
  echo "Usage: $0 <source directory>"
  exit
fi

COUNT=0;
SOURCE_DIR="$1"
DEST_DIR="$1-minified"

# create destination directory and copy source files
rm -Rf ${DEST_DIR}
mkdir ${DEST_DIR}
cp -r "./${SOURCE_DIR}" "./${DEST_DIR}/${SOURCE_DIR}"

# iterate through php source files, compressing them and writing the output to the destination
for FILENAME in `echo $(find ${SOURCE_DIR} -name "*.php")`
do
    COUNT=$((COUNT+1))
    php -w ./${FILENAME} > ./${DEST_DIR}/${FILENAME}
done

sizeBefore=$(du -h -c ${SOURCE_DIR} | tail -1 | tr -d 'total' | tr -d ' ');
sizeAfter=$(du -h -c ${DEST_DIR} | tail -1 | tr -d 'total' | tr -d ' ');

# finished
echo "Finished - $COUNT PHP files minified"
echo "Size Before: $sizeBefore"
echo "Size After: $sizeAfter"