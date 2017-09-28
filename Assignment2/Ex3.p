
/*------------------------------------------------------------------------
    File        : Ex3.p
    Purpose     : 

    Syntax      :

    Description : 

    Author(s)   : 
    Created     : Thu Sep 28 12:26:16 EEST 2017
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */

BLOCK-LEVEL ON ERROR UNDO, THROW.

/* ********************  Preprocessor Definitions  ******************** */


/* ***************************  Main Block  *************************** */


//Request: 3. stergeti ultimul client din Newark, precum si comenzile lui


DO TRANSACTION:
    FIND LAST Customer WHERE Customer.city = "Newark" EXCLUSIVE-LOCK.
    FOR EACH Order OF Customer EXCLUSIVE-LOCK:
        FOR EACH OrderLine OF Order EXCLUSIVE-LOCK:
            IF AVAILABLE OrderLine THEN DO:
                DELETE OrderLine.
            END.
        END.
        DELETE Order.
    END.
    DELETE Customer.
END.