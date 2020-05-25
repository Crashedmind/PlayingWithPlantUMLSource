#!/bin/bash

# By default we use png image format for plantuml diagrams because it is the most supported. 
# However, for diagrams with hyperlinks we use svg since it supports hyperlinks (png does not)
#docker run -u `id -u $USER`:`id -g $USER` -i  --rm -v $(pwd):/home/documentation -t docdac:ubuntu-1.0 java -jar /usr/share/plantuml/plantuml.jar -config /home/documentation/docs/plantuml/plantuml_cfg.puml -tsvg ./docs/plantuml/examples/links.puml

docker run -u `id -u $USER`:`id -g $USER` -i  --rm -v $(pwd):/home/documentation -t docdac:ubuntu-1.0 bash ./_sphinx_build.sh


