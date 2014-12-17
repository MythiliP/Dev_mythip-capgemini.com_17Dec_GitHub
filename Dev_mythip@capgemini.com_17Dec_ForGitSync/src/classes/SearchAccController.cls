public with sharing class SearchAccController {

    public String searchAcc { get; set; }
    
    public String displayText{get;set;}
    public List<Account> accList{get;set;}
    
    public List<Opportunity> oppList{get;set;}
    
       
    public PageReference search(){
        accList=[select id,(select Name,StageName,CloseDate,ForecastCategory from Opportunities) from Account where Name LIKE :'%'+searchAcc+'%'];
        oppList=accList[0].Opportunities;
        return null;
    }
}