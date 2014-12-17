public with sharing class CustomerDetails {
    
    public String username{get;set;}
    public String password{get;set;}
    public String firstName{get;set;}
    public string lastName{get;set;}
    public String phone{get;set;}
    public string address{get;set;}
    public string s{get;set;}
    
    
    public PageReference redirect(){
        List<Customer__c> custList=[select username__c,password__c,First_Name__c from Customer__c where Customer__c.username__c=:username and Customer__c.password__c=:password];
        if(custList.size()==0){
            Pagereference testPage = new Pagereference('/apex/CustomerError');
            return testPage;
        }
        else{
             firstName=custList.get(0).First_Name__c;
            //Pagereference testPage1 = new Pagereference('/apex/CustomerSuccessfull');
            Pagereference testPage1=Page.CustomerSuccessfull;
            testPage1.setRedirect(true);
            return testPage1;
        }
    }
    
    public PageReference save(){
        Customer__c cust=new Customer__c();
        cust.username__c=username;
        cust.password__c=password;
        cust.First_Name__c=firstName;
        cust.Last_Name__c=lastName;
        cust.Phone__c=phone;
        cust.Address__c=address;
        insert cust; 
        return null;
    }
    
    public PageReference redirectToNewUser(){
        Pagereference testPage2 = new Pagereference('/apex/CustomerNew');
            return testPage2;
    }

}