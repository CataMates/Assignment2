
/*------------------------------------------------------------------------
    File        : Ex2.p
    Purpose     : 

    Syntax      :

    Description : 

    Author(s)   : 
    Created     : Thu Sep 28 11:37:36 EEST 2017
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */

BLOCK-LEVEL ON ERROR UNDO, THROW.

/* ********************  Preprocessor Definitions  ******************** */


/* ***************************  Main Block  *************************** */


//Request:Adaugati un Client nou cu urmatoarele date.

    

DO TRANSACTION:
    CREATE Customer.
    ASSIGN
        Customer.Country = "Romania".
        Customer.Name = "Catalin Mates".
        Customer.Address = "77, 21 Decembrie 1989 St., The Office".
        Customer.City = "Cluj-Napoca".
        Customer.State = "CJ".
        Customer.PostalCode = "400604".
        Customer.EmailAddress = "catalin.mates@tss-yonder.com".
/*    CREATE Order.*/
/*    ASSIGN                                  */
/*        Order.CustNum = Customer.CustNum.   */
/*    CREATE OrderLine.                       */
/*    ASSIGN                                  */
/*        OrderLine.Ordernum = Order.OrderNum.*/
        
END.
    
