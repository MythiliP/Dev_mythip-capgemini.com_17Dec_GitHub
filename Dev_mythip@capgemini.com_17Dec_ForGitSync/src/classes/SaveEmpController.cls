public with sharing class SaveEmpController {

    public PageReference saveEmp() {
        Employee__c emp=new Employee__c();
        emp.Name__c=empName;
        emp.Department__c=empDept;
        emp.Salary__c=empSalary;
        emp.Bonus_Amount__c=Integer.ValueOf(empBonus);
        insert emp;
        return null;
    }


    public String empBonus { get; set; }

    public String empSalary { get; set; }

    public String empDept { get; set; }

    public String empName { get; set; }
}