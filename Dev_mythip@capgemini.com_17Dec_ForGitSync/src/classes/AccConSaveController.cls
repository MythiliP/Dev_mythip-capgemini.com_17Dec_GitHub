public with sharing class AccConSaveController {

    public PageReference saveAction() {
        Account acc=new Account();
        acc.Name=wrapperObj.accName;
        acc.AccountNumber=wrapperObj.accId;
        insert acc;
        Contact con=new COntact();
        con.LastName=wrapperObj.conName;
        insert con;
        return null;
    }


    public wrapperClass wrapperObj{get;set;}
    
    public AccConSaveController (){
        wrapperObj=new wrapperClass ();
    }
}