global with sharing class BatchTaskAssign implements Database.Batchable<sObject>{   
     
    global Database.QueryLocator start(Database.Batchablecontext BC){ 
            return Database.getQueryLocator([select ENT_Type__c,Number__c,Qrtly_Revenue_Growth__c from JnJTask__c]);

      }

   global void execute(Database.BatchableContext BC, List<JnJTask__c> StagingList){   
          List<JnJTask__c> taskListToProcess=new List<JnJTask__c>();
          List<Objective__c> objList=new List<Objective__c>();
          for( sobject s:StagingList){
            JnJTask__c jnjObj = (JnJTask__c)s;
            taskListToProcess.add(jnjObj); 
          }

      if(taskListToProcess!=null){
           for(JnJTask__c jnj:taskListToProcess){
                   Objective__c o=new Objective__c();
                   o.ENT_Type__c=jnj.ENT_Type__c;
                   o.Number__c=jnj.Number__c;
                   o.Qrtly_Revenue_Growth__c=jnj.Qrtly_Revenue_Growth__c;
                   objList.add(o);                    

            }
       }

       insert objList;

    }

    global void finish(Database.BatchableContext BC){
        system.debug(LoggingLevel.DEBUG,'In BatchTaskAssign:finish');
    }

}