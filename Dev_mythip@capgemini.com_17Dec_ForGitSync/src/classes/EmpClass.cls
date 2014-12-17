@isTest(seealldata=false)
private class EmpClass{

static testMethod void test_employee(){
System.Test.startTest();
 String eName='test';
Integer bonus=15345;
String dept='IT';
Integer salary=5445;
SaveEmployeeDetails emp=new SaveEmployeeDetails();
emp.saveEmp();
System.Test.stopTest();
}

static testMethod void test_saveToCon(){

SaveToContacts s=new SaveToContacts();
system.assert(s.saveToCon()==null,null);
}

static testMethod void test_searchContacts(){
System.Test.StartTest();
Account acc=new Account();
acc.Name='greg';
acc.Rating='Hot';
insert acc;
Contact con=new Contact();
con.LastName='test';
con.MailingCity='gfag';
con.MailingCountry='fagdf';
con.MailingState='fdghe';
con.LeadSource='Other';
con.MobilePhone='325215';
con.Birthdate=System.Today();
con.AccountId=acc.id;
insert con;
DisplayContactsController dis=new DisplayContactsController();
system.assert(dis.searchContacts()==null,null);
System.Test.StopTest();
}

}