public with sharing class ContactController {

    public List<Contact> conList{get;set;}

    public PageReference searchContact() {
        conList=[select Name,Department,MobilePhone,Description,Languages__c,Account.Name,Account.Industry,Account.Active__c from Contact where name like :'%'+conName+'%'];
        return null;
    }


    public String conName { get; set; }
}