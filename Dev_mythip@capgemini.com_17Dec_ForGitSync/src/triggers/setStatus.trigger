trigger setStatus on Dependent__c (before insert,before update) {

    Set<Id> empSet=new Set<Id>();
    Map<id,Employee__c> empMap=null;
    
    for(Dependent__c dep:Trigger.New){
        empSet.add(dep.Employee__c);
    }
    
    empMap=new Map<Id,Employee__c>([select Satus_Of_Approval__c from Employee__c where id IN :empSet]);
    
    for(Dependent__c d:Trigger.New){
    
        Employee__c emp=empMap.get(d.Employee__c);
        
        d.Status__c=emp.Satus_Of_Approval__c;
       
    }
}