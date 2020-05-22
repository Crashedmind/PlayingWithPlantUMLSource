FROM ubuntu:latest


# MAINTAINER="Chris_m11"


RUN mkdir -p /usr/share/man/man1 \ 
  && apt-get update \
  && apt-get install -y \
    wget \
    python3-pip \
    python3-dev \
    default-jre \
    graphviz \
    doxygen \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --no-cache --upgrade pip && pip install \
     sphinx_rtd_theme \ 
     sphinxcontrib-plantuml \
     exhale \ 
  && mkdir /usr/share/plantuml \
  && wget https://sourceforge.net/projects/plantuml/files/latest/download -O ./plantuml.jar \
  && mv ./plantuml.jar /usr/share/plantuml/ \
  && rm -rf /var/lib/apt/lists/* 

  
  RUN pip3 install --no-cache --upgrade  sphinxcontrib.yt  sphinxcontrib-confluencebuilder
  
  # for mixing RST and MD files https://www.sphinx-doc.org/en/1.6/markdown.html
  RUN pip3 install recommonmark

  RUN pip3 install sphinxcontrib.twitter

  # since plantuml url is not the final file location, we need to explicitly save the file as "plantuml.jar" 
  # it would save as file "download" if we didn't         
  
  # /usr/share/man/man1 required so default-jre (Java Runtime required for Plantuml) installs

  # https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#run recommends to RUN 'rm -rf /var/lib/apt/lists/*' at end to reduce image size

  # Plantuml + Java content adds ~300MB to image size

COPY ./plantuml.1.2020.10.jar /usr/share/plantuml/plantuml.jar

RUN pip3 install sphinx-panels

#env setup
ENV GRAPHVIZ_DOT=/usr/bin/dot

WORKDIR /home/documentation

