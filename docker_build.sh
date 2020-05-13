#!/bin/bash

docker build -t docdac:latest -t docdac:ubuntu-1.0 .

# This fixes ReadTheDocs Theme Bug where table text does not auto wrap for long lines.
# https://rackerlabs.github.io/docs-rackspace/tools/rtd-tables.html 
mkdir ./docs/build/_static/
cp ./theme_overrides.css ./docs/build/_static/