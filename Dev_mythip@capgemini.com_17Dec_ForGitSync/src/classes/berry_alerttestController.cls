public with sharing class berry_alerttestController {

    public PageReference redirectToPage2() {
    
         pageReference pr;
        pr = new pageReference('/apex/berry_alerttest2');
        pr.setRedirect(false);
       
        return pr;
        
    }

 public BerryWrapperClass berryStatic{get;set;}
 
 
    
    public berry_alerttestController (){
        berryStatic=new BerryWrapperClass();
       
    }
    
    // @RemoteAction
    public String saveDb() {
     system.debug('**********************'+berryStatic);
        Account a=new Account();
        a.Name=berryStatic.name;
        insert a;
        return 'fesfrde';
    }

    public PageReference redirectToPage1(){
         pageReference pr;
        pr = new pageReference('/apex/berry_alerttest');
        pr.setRedirect(false);
       
        return pr;
    }
    
}