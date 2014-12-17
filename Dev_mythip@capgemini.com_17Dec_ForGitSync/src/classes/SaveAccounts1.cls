public with sharing class SaveAccounts1 {

    public Account acc{get;set;}
        
    public SaveAccounts1(ApexPages.Standardcontroller std){
    
        acc=(Account)std.getRecord();
        
    }
    
    public PageReference saveAccount(){
    
        insert acc;
        PageReference pgRef=new PageReference('https://ap1.salesforce.com/'+acc.Id);
        return pgRef;
        
    }

}