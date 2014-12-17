public with sharing class SaveEmployeeDetails{

    public String empName{get;set;}
    
    public Decimal bonus{get;set;}
    
    public String department{get;set;}
    
    public String salary{get;set;}
    
    public void saveEmp(){
        Employee__c emp=new Employee__c();
        emp.Name__c=empName;
        emp.Bonus_Amount__c=bonus;
        emp.Department__c=department;
        emp.Salary__c=salary;
        insert emp;
    }

}