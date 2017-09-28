
/*------------------------------------------------------------------------
    File        : Ex1.p
    Purpose     : 

    Syntax      :

    Description : 

    Author(s)   : 
    Created     : Thu Sep 28 08:52:46 EEST 2017
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */

BLOCK-LEVEL ON ERROR UNDO, THROW.

/* ********************  Preprocessor Definitions  ******************** */
/*Match Point Tenni*/

/* ***************************  Main Block  *************************** */



DO TRANSACTION ON ERROR UNDO, LEAVE:
    FIND FIRST Customer WHERE Customer.City = "Boston" EXCLUSIVE-LOCK NO-ERROR.
    IF AVAILABLE Customer THEN DO:
        ASSIGN Customer.State = "FL".
    END.
    VALIDATE Customer.
END.


DISPLAY Customer.Name LABEL "Name".
DISPLAY Customer.City LABEL "City".
DISPLAY Customer.State LABEL "State".
