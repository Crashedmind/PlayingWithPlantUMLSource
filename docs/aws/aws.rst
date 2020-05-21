*******************************************************************************
Create Real Life AWS Diagrams
*******************************************************************************



.. _vision: https://www.scaledagileframework.com/vision/
.. _PlantUML: https://www.plantuml.com/
.. _PlantUMLPreProcessor: https://plantuml.com/preprocessing
.. _listsprites: https://plantuml.com/#
.. _together: https://forum.plantuml.net/4387/please-provide-together-keyword-group-diagram-nodes-together
.. _GithubActions: https://help.github.com/en/actions
.. _GithubActionsCoreConcepts: https://help.github.com/en/actions/getting-started-with-github-actions/core-concepts-for-github-actions
.. _UsageLimits: https://help.github.com/en/actions/getting-started-with-github-actions/about-github-actions#usage-limits
.. _GithubCommunity: https://help.github.com/en/actions/getting-started-with-github-actions/using-community-workflows-and-actions
.. _Running: https://plantuml.com/running
.. _PlantUMLActions: https://github.com/marketplace?query=plantuml
.. _AWSArchitectureBlog: https://aws.amazon.com/blogs/architecture


.. note ::

    In this section we'll put PlantUML to the test by seeing if we can recreate some real diagrams from the AWSArchitectureBlog_ .

    We're aiming for architectural equivalence (not image reproduction).

    We will take the 3 most recent entries showing architecture diagrams on the front page as at May 2020.

    #. BBVA: Helping Global Remote Working with Amazon AppStream 2.0 https://aws.amazon.com/blogs/architecture/bbva-helping-global-remote-working-with-amazon-appstream-2-0/
    #. Building a Scalable Document Pre-Processing Pipeline https://aws.amazon.com/blogs/architecture/building-a-scalable-document-pre-processing-pipeline/
    #. Serving Billions of Ads in Just 100 ms Using Amazon Elasticache for Redis https://aws.amazon.com/blogs/architecture/serving-billions-of-ads-with-amazon-elasticache-for-redis/

    Then we'll show the original image from blog, and the PlantUML version for comparison.

    We'll approach them in order of complexity.



1
===============================================================================

Original
-------------------------------------------------------------------------------
Original image from AWSArchitectureBlog_ "Serving Billions of Ads in Just 100 ms Using Amazon Elasticache for Redis" https://aws.amazon.com/blogs/architecture/serving-billions-of-ads-with-amazon-elasticache-for-redis/

.. figure :: ./High-level-digram-1-Smadex-1024x584.png

PlantUML Equivalent
-------------------------------------------------------------------------------
.. uml:: 1.7.puml
    :align: center

.. literalinclude:: ./1.7.puml
    :linenos: 


Select an icon library
--------------------------------------------------------------------------------
These are recent diagrams (April, May 2020) so use the newer AWS icon set from AWS i.e.

* This one: https://github.com/plantuml/plantuml-stdlib/tree/master/awslib
* Not this one https://github.com/plantuml/plantuml-stdlib/tree/master/aws

ref: https://github.com/awslabs/aws-icons-for-plantuml

Gather the icons we need
--------------------------------------------------------------------------------

For AWS icons, Orange is AWS Compute so let's take a look at the compute icons.
Yes, that's the EC2 icon on right of diagram (which is part of AWS Compute). 

Use our github trick to find "users"; they are in General.

The green box isn't an AWS service - it's showing a mobile/laptop client.
Traditional Server

We need "Traditional Server" for "Ad Exchange"


```autonumber``` does not work in these diagrams.



.. uml:: 1.puml
    :align: center
    
.. literalinclude:: ./1.puml
    :linenos: 


Add Text To Icons
~~~~~~~~~~~~~~~~~~~~~~~~~~
.. uml:: 1.2.puml
    :align: center
    
.. literalinclude:: ./1.2.puml
    :linenos: 

Simplify The Icons
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.. uml:: 1.3.puml
    :align: center
    
.. literalinclude:: ./1.3.puml
    :linenos: 

Connect The Icons
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.. uml:: 1.4.puml
    :align: center
    
.. literalinclude:: ./1.4.puml
    :linenos: 

Change the Layout: ortho
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.. uml:: 1.5.puml
    :align: center
    
.. literalinclude:: ./1.5.puml
    :linenos: 

Change the Layout: polyline
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.. uml:: 1.6.puml
    :align: center
    
.. literalinclude:: ./1.6.puml
    :linenos: 

Add A Box: package
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.. uml:: 1.7.puml
    :align: center
    
.. literalinclude:: ./1.7.puml
    :linenos: 





.. todo ::
    recover info from png with plantuml
    High-level-digram-1-Smadex-1024x584.png
    https://d2908q01vomqb2.cloudfront.net/fc074d501302eb2b93e2554793fcaf50b3bf7291/2020/04/15/High-level-digram-1-Smadex-1024x584.png






https://github.com/awslabs/aws-icons-for-plantuml/blob/master/dist/Compute/all.puml


2
===============================================================================


.. figure :: ./Pre-processing-pipeline-architecture-SM.jpg
    
Building a Scalable Document Pre-Processing Pipeline https://aws.amazon.com/blogs/architecture/building-a-scalable-document-pre-processing-pipeline/

3
===============================================================================


.. figure :: ./BBVA-uses-AWS-Transit-Gateway-to-build-a-hub-and-spoke-network-topology-2.png

BBVA: Helping Global Remote Working with Amazon AppStream 2.0 https://aws.amazon.com/blogs/architecture/bbva-helping-global-remote-working-with-amazon-appstream-2-0/