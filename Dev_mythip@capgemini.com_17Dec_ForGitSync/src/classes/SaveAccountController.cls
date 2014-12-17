public with sharing class SaveAccountController {

    public PageReference saveAccount() {
        Account a=new Account();
        a.Name=accName;
        a.AccountNumber=accNumber;
        a.AccountSource=accSource;
        a.Attendance__c=accAttendance;
        insert a;
        return null;
    }


    public Decimal accAttendance { get; set; }

    public String accSource { get; set; }

    public String accNumber { get; set; }
 
    public String accName{get;set;}
}