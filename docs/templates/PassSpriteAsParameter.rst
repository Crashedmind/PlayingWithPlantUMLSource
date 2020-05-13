******************************************************
Create Reuseable Template Diagrams
******************************************************


.. _vision: https://www.scaledagileframework.com/vision/
.. _PlantUML: https://www.plantuml.com/
.. _PlantUMLPreProcessor: https://plantuml.com/preprocessing

.. tip ::
    #. This is a "Postcard from the future" vision_ of the PlantUML user guide.
    #. It gives an overview and details of a specific feature (Functions and Procedures) as an example.
    #. The purpose is to elicit feedback on what we want, by presenting a vision_ of what we have in the future.
    #. Once we know what we want, then we can start to phase it in via who/what/when...

Create reuseable template diagrams that are easy to change, maintain, and share
===============================================================================

Introduction
-------------------------------------------------------------------------------
Do you find yourself drawing similar diagrams with slight changes?

Do you wish you could use a template that you, or someone else, created to make it quicker and easier? And that you can build on over time?

Here we'll create re-usable diagram templates using the PlantUMLPreProcessor_.
We'll start with a diagram, then show how to make it into a template with customizable parts.

overall network diagram elements:
users: Developer, Bob, product
machines: type, IP, OS, 


The diagram
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

INSERT: diagram of 3 PCs 

Here we have a standard network diagram. 
The elements are the same. The following things change:
#. The CIDR address range and IPs e.g. "192.168.1.*"
#. The computher names e.g. "Bob's workstation"
#. The network name e.g. "Main office"

PLAY

highlight in code the main features





PlantUMLPreProcessor_



.. literalinclude:: ./PassSpriteAsParameter1.puml
    :emphasize-lines: 1, 14-15, 19-21, 23
    :linenos: 

Passing a sprite as an argument to a Procedure
-----------------------------------------------