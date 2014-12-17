public with sharing class DisplayContactsController{

    public String conName{get;set;}
    
    public List<Contact> conList{get;set;}
    
    
    public PageReference searchContacts() {
        system.debug('**********************'+conName);
        conList=[select Name,MailingCity,MailingCountry,MailingState,LeadSource,Birthdate,MobilePhone,Account.Name,Account.Rating from Contact where Name like :'%'+conName+'%'];
        system.debug('@@@@@@@@@@@@@@@@@@@@@@'+conList);
        return null;
    }


  }