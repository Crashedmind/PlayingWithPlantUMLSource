.. _FunctionPointer: https://www.geeksforgeeks.org/function-pointer-in-c/

*******************************************************************************
Standardising Standard Library 2
*******************************************************************************




Plantuml Stdlib Terminology
===============================================================================

.. csv-table:: Plantuml Stdlib Terminology
   :header: "Term", "Meaning"
   :widths: 10, 50

    "**PlantUML Stdlib**", "Plantuml Standard Library  

        i.e. https://github.com/plantuml/plantuml-stdlib"
    "**Library**", "Plantuml stdlib consists of several icon  **libraries**       

        e.g. awslib, elastic, azure…"
    "**Category**", "Each icon libary consists one or more icons **categories** 

        Category is a subdir / grouping of icons within an icon library

        some libraries don’t sub-divide the icons - so the category is the library"
    "**Icon**", "Each category consists one or more **icons**

        An Icon is a decorated sprite e.g. a coloured sprite in a rectangle with all the text and colour"
    "**Macro**", "The pre-processor code applied to a sprite
    
        i.e. the define/definelong or function/procedure associated with a sprite to make it an icon
        
        The call from the user puml file is a macro."     
    "**Sprite**", "A 2D bitmap"     
    "**Diagram**", "Everything you see. Everything represented by the puml file"
    "**Style**", "A collection of attributes that specify the appearance for a **single icon**. 
    
        A style can specify attributes such as font color, font size, background color, and much more. 
    
        Optional.        
    
    If present, a style takes precedence over a theme"
    "**Theme**", "A type of style that's **applied to the entire diagram** - not just an individual icon. 
    
        A collection of coordinated styles that determine the color, background attributes, and the fonts used on a layout. 
    
        Themes also enhance the appearance of a layout and give all your layouts a consistent look. 
    
        A theme does not control the placement or behavior of fields or objects on a layout. " 
    "**Layout**", "An arrangement of fields, objects, pictures, and layout parts that represents the way information is organized and presented."



  

**Do we need individual sprite files? e.g. awslib/ARVR/Sumerian.puml and associated png (or svg), as all info is in puml file**





Plantuml Stdlib File Layout
===============================================================================

.. figure :: stdlibFileLayout.png

    


Standardising Sprites
===============================================================================

.. csv-table:: Sprite Property
   :header: "Property", "Value"
   :widths: 10, 50

    "**XxY**", "128x128
        
        Sprite resolution SHOULD be this value or close to it.

        Current sprite libraries range from ~40 to 256.
        "  
    "**Levels**", "16
            
            Sprite resolution SHOULD be this value.

            4, 8, 16 are the possible options.
        "  

.. note ::
    ref: https://tools.ietf.org/html/rfc2119 for SHOULD, MUST, MAY meaning

Standardising Icon Macro API
===============================================================================

.. csv-table:: Plantuml Stdlib Macro API Modes
   :header: "Mode", "Details"
   :widths: 10, 50

    "**Standard**", "Keyword arguments **SHOULD** be used for all parameters per todo ref
    
        This gives future proofing: as new parameters are added over time, 
            
            user specifies only the parameter they care about
            
            for the parameter they care about, only named keyword arguments are used
        "  
    "**Legacy**", "To work with a subset of *existing user diagrams*, new macros will enforce the parameter ordering per Type 2
    
        e.g. *!define AzureBatchAI(e_alias, e_label, e_techn, e_descr) AzureEntity(e_alias, e_label, e_techn, e_descr, AZURE_SYMBOL_COLOR, AzureBatchAI, AzureBatchAI)*
    
        **Existing macros in existing libraries should be kept, even when a newer keywords arguments mode is added** 
        This ensures backwards compatiblity of PlantUML Stdlib with existing user diagrams.
    " 
    "**Mixed**", "This mix of ordered parameters, with keyword parameters is also possible.

         This is not as future proof as Standard mode.
    "      

Mode Example 
-------------------------------------------------------------------------------

.. literalinclude:: modes.txt
    :linenos: 
    

MACRO($alias="alias", $description="", $label="", $technology="", $scale=1, $colour="blue", $shape="rectangle", $label_textsize="18")



.. todo :: 

    this salt diagram does not work so use png for now




    .. uml:: stdlibFileLayout.puml
        :align: center
        :caption: *Plantuml Stdlib File Layout* 
