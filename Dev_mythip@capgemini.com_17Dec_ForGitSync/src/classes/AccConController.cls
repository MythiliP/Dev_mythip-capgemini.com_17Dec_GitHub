public with sharing class AccConController {   

public Wrapper wrpObj{get;set;}
public string test{get;set;}
  
public AccConController(){
wrpObj=new Wrapper();     
}

    public PageReference SaveAccCon() {
        Account acc=new Account();
        acc.Name=wrpObj.accName;
        acc.AccountNumber=wrpObj.accNumber;
        acc.Phone=wrpObj.accPhone;
        acc.Attendance__c=Decimal.valueOf(wrpObj.accAttendance);
        insert acc;
        Contact con=new Contact();
        con.LastName=wrpObj.conName;
        con.Department=wrpObj.conDept;
        insert con;
        return null;
    }

}