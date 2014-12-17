@isTest(seeAllData=false)

private class test1{
    
    static testmethod void name(){
    
        SaveEmployeeDetails s=new SaveEmployeeDetails();
        s.empName='vfgfg';
        s.bonus=345;
        s.department='CSC';
        s.salary='4356';
        s.saveEmp();
    }
}