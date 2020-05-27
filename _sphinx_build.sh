#!/bin/bash

cd docs/
sphinx-build -b html ./ ./build

#sphinx-build -b singlehtml ./ ./build/singlehtml
#sphinx-build -b latex ./ ./build
#sphinx-build -b confluence ./ ./build/confluence


