public with sharing class SaveLead{

     public Lead custLead{get;set;}

public SaveLead(ApexPages.StandardController stdCon){
     custLead=(Lead)stdCon.getRecord();
}

public PageReference saveToLead(){
    
   insert custLead;
   PageReference pgRef=new PageReference('https://ap1.salesforce.com/'+custLead.Id);
   return pgRef;
   
}

}