#!/bin/bash

# By default we use png image format for plantuml diagrams because it is the most supported. 
# However, for diagrams with hyperlinks we use svg since it supports hyperlinks (png does not)
#docker run -u `id -u $USER`:`id -g $USER` -i  --rm -v $(pwd):/home/documentation -t docdac:ubuntu-1.0 java -jar /usr/share/plantuml/plantuml.jar -config /home/documentation/docs/plantuml/plantuml_cfg.puml -tsvg ./docs/plantuml/examples/links.puml

#this is required because we are including html in an rst file and so sphinx does not copy the file for us to docs/build
cp docs/networkusers.png docs/build/

docker run -u `id -u $USER`:`id -g $USER` -i  --rm -v $(pwd):/home/documentation -t docdac:ubuntu-1.0 bash ./_sphinx_build.sh


