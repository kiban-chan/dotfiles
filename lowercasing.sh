#!/bin/bash
 
cd "$HOME"
 
cp .config/user-dirs.dirs .config/user-dirs.dirs.$(date +%Y%m%d%H%M%S)
 
for d in `find . -type d -regex "^./[^.].*" -maxdepth 1`
do
        source=$(basename $d)
        lower=$(echo $source|tr "A-Z" "a-z")
        mv "$source" "$lower"
        sed -i s#/$source"#/$lower"#g .config/user-dirs.dirs
done