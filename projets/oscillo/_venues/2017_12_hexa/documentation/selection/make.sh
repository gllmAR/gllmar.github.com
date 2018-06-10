#!/bin/bash
# cd in the folder wanted 
FOLDER=c
FILENAME=montage_$FOLDER.jpeg

cd $FOLDER

# delete the old
if [ -f $FILENAME ]; then
rm $FILENAME
fi

montage null:   *.jpg  null: -tile 20x5 -geometry -60+2  -background black -compose add $FILENAME  && open $FILENAME