public with sharing class SearchAccName {

    public PageReference searchAcc() {
       List<Account> accList=[select Name from Account where Name=:accName];
       if(accList.size()>0){
           display='Record Exist';
       }else{
           display='Not found';
       }
       return null;
    }


    public String accName { get; set; }
    
    public String display{get;set;}
}