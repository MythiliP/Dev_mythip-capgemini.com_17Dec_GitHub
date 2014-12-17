public with sharing class Customer {
    public string name{get;set;}
    public string address{get;set;}
    public string phoneNo{get;set;}
    public List<Customer__c> custList {get;set;} 
    public List<Customer__c> custListNew {get;set;} 
    
    public void save(){
        Customer__c cust=new Customer__c();
        cust.Name__c=name;
        cust.Address__c=address;
        cust.Phone__c=phoneNo;
        insert cust;
    }
    
    public PageReference customerList() {
        customerListNew();
        return null; 
    
    }
    
    public list<Customer__c> customerListNew() {
    custList=[select Name__c,Address__c,Phone__c from Customer__c];
        return custList;
    }
    
    public PageReference custAdd()
    {
    
        String message = System.currentPagereference().getParameters().get('param');
        custAdd1(message);
        return null;
    }
    
    public List<Customer__c> custAdd1(String message)
    {
        
        custListNew=[select Phone__c,Address__c from Customer__c where Address__c =: message];
        system.debug('List'+custListNew);
        return custListNew; 
    }

}