public with sharing class AccOpportunityController{

    public String accName{get;set;}
    
    public List<Account> accList{get;set;}
    
    public List<Opportunity> oppList{get;set;}
    
    public PageReference fetchOpportunities(){
        accList=[select Id,Name,(select Name,Amount,CloseDate,StageName from Opportunities)from Account where Name=:accName];
        oppList=accList[0].Opportunities;
        return null;
    }
}