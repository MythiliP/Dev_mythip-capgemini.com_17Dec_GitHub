public with sharing class TestCon {

   public TestCon(){
       Account acc=[select id from Account limit 1];
       
   }

}