# Configuration file for the Sphinx documentation builder.
#
# This file only contains a selection of the most common options. For a full
# list see the documentation:
# http://www.sphinx-doc.org/en/master/config

# -- Path setup --------------------------------------------------------------

# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here. If the directory is relative to the
# documentation root, use os.path.abspath to make it absolute, like shown here.
#





# -- Project information -----------------------------------------------------

project = 'Playing with PlantUML'


# Setup the breathe extension
breathe_projects = {
    "docdac": "./doxyoutput/xml"
}

# Breathe Configuration
#breathe_default_project = "docdac"

# -- General configuration ---------------------------------------------------

# Add any Sphinx extension module names here, as strings. They can be
# extensions coming with Sphinx (named 'sphinx.ext.*') or your custom
# ones.
# https://www.sphinx-doc.org/en/master/usage/extensions/index.html
# sphinx.ext.autosectionlabel – Allow reference sections using its title

extensions = [ 
              "sphinxcontrib.plantuml",
              "sphinx.ext.graphviz",
              "sphinx.ext.autosectionlabel",
              "sphinxcontrib.yt",
              "sphinx.ext.todo",
              "sphinxcontrib.confluencebuilder"
             
]




plantuml = 'java -jar /usr/share/plantuml/plantuml.jar -config /home/documentation/docs/plantuml/plantuml_cfg.puml' #location as per Dockerfile
#plantuml_output_format = 'svg' # svg format is used for images because it supports embedding hyperlinks. This causes some funnies so only enable per file basis as required

# Configure Graphviz
graphviz_output_format = 'png'
#...


# 


# Add any paths that contain templates here, relative to this directory.
templates_path = ['_templates']

# List of patterns, relative to source directory, that match files and
# directories to ignore when looking for source files.
# This pattern also affects html_static_path and html_extra_path.
exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']


# -- Options for HTML output -------------------------------------------------

# The theme to use for HTML and HTML Help pages.  See the documentation for
# a list of builtin themes.
#
html_theme = 'sphinx_rtd_theme'

# Add any paths that contain custom static files (such as style sheets) here,
# relative to this directory. They are copied after the builtin static files,
# so a file named "default.css" will overwrite the builtin "default.css".
html_static_path = ['_static']


# This fixes ReadTheDocs Theme Bug where table text does not auto wrap for long lines.
# https://rackerlabs.github.io/docs-rackspace/tools/rtd-tables.html 
html_context = {
    'css_files': [
        '_static/theme_overrides.css',  # override wide tables in RTD theme
        ],
     }

# Tell sphinx what the primary language being documented is.
primary_domain = 'rst'

# Tell sphinx what the pygments highlight language should be.
#highlight_language = 'cpp'


#List any ToDos https://www.sphinx-doc.org/en/master/usage/extensions/todo.html
todo_include_todos = True


# -- Options for Markdown input support -------------------------------------------

#Markdown support per https://www.sphinx-doc.org/en/1.6/markdown.html
# Markdown support

from recommonmark.parser import CommonMarkParser

# The suffix of source filenames.
source_suffix = ['.rst', '.md']

source_parsers = {
	'.md': CommonMarkParser,
}
