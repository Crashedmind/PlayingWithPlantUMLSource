#!/bin/bash

#test installed executables by running to show version of executable

echo "doxygen"
docker run -u `id -u $USER`:`id -g $USER` -i --rm -v $(pwd):/home/documentation -t docdac:ubuntu-1.0 doxygen -v

echo ""
docker run -u `id -u $USER`:`id -g $USER` -i --rm -v $(pwd):/home/documentation -t  docdac:ubuntu-1.0 sphinx-build --version

echo ""
docker run -u `id -u $USER`:`id -g $USER` -i --rm -v $(pwd):/home/documentation -t  docdac:ubuntu-1.0 java -jar /usr/share/plantuml/plantuml.jar -v





