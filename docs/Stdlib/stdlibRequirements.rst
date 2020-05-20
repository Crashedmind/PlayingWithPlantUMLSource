*******************************************************************************
Standard Library
*******************************************************************************

Observations on Standard Library
===============================================================================

#. Marcos use define and definelong which are deprecated per below

#. DRY Do not Repeat Yourself. The macros are repeated 

    #. within a file -repeat the macro to add each new parameter
    #. across files - the macro content is largely the same - but the macro name changes to specify the icon to use

#. Close Coupling

    #. Macros are defined in the icon file for each icon

#. Lack of consistency    

    #. icon sizes

        #. some have multiple sizes
        #. for those that have one size, it is not standard/common with the other stdlib libraries

    #. icon files

        #. some break up the icons into categories sub-directories, some don't
        #. some have an ```all.puml``` file that includes all sprite content per category, some don'target

What a User Wants In A Standard Library
===============================================================================
#. Consistency of macros, files, sizes
#. Specify the things they care about

    #. The marcos force a user to specify things they may not care about e.g. to specify color in this macro, the user needs to specify the preceeding parameters also

        ```!define WHATEVER(_alias, _label, _shape, _color) ENTITY(_shape,_color,whatever,_label, _alias,WHATEVER)```
    
    #. Default values specified when the icons are built, but can be overridden by the user in their diagram file (at runtime)

#. Decoupling of the sprite (the image), from the decoration (text, shape, color, scale etc...)
#. Future Proofing

    #. uses supported PlantUML features, and can be easily changed in the future.
