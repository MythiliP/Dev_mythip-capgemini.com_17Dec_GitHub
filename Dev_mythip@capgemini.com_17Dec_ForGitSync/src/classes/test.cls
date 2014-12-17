public class test
{
public static void newmethod()
{
//List<Book__c> b=new List<Book__c>();
//b=[SELECT Name,Price__c FROM Book__c limit 1];

String s = [select name from book__c limit 1].name;

Candidate__c can=new Candidate__c(Name=s);
insert can;
}
}