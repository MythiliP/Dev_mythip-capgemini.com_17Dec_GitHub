public with sharing class Employee {
	public Integer empId{get;set;}
	public String empName{get;set;}
	public String empAddress{get;set;}
	public String empDepartment{get;set;}
	public String empSalary{get;set;}
	
	public Pagereference redirect(){
		String s=[select Employee__c.Name__c from Employee__c where Employee__c.Name__c=:empName].Name__c;
		if(s!=null)
		{
		ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.FATAL, 'my error msg');
		ApexPages.addMessage(myMsg);
		return null;
		}
		else{
		Employee__c  e=new Employee__c();
		e.Id__c=empId;
		e.Name__c=empName;
		e.Address__c=empAddress;
		e.Department__c=empDepartment;
		e.Salary__c=empSalary;
		insert e;
		Pagereference testPage = new Pagereference('/apex/EmployeeDetailsSuccessfull');
		return testPage;
		}
	}
	
	public void clear(){
		empId=null;
		empName=null;
		empAddress=null;
		empDepartment=null;
		empSalary=null;
	}
}