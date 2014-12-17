trigger email on Order__c (after insert) {
Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
//String[] toAddresses = new String[] {'mythilikumar.19@gmail.com'}; 
//String[] toAddresses = new String[] {};
//Accounttest__c s =new Accounttest__c();
List<Accounttest__c> s = new List<Accounttest__c>();
//String[] s =new List<Accounttest__c> ([select email__c from Accounttest__c where Name='Raj']); 
s = [select email__c from Accounttest__c where id=: trigger.new[0].Accounttest__c];
//message.setSubject('This is how you use the sendEmail method.');
//message.setToAddresses(toAddresses);
//String[] s=new String();
message.setToAddresses(new String[] {s.get(0).email__c});
message.setReplyTo('support@acme.com');
message.setSenderDisplayName('Salesforce Support');
message.setTemplateId('00X90000000L87M');
message.setTargetObjectId(userinfo.getUserId());
message.setWhatId(Trigger.new[0].Id);
message.setSaveAsActivity(false);
//Trigger.new[0].Price__c = 23;
//update Trigger.new;
 //SingleEmailMessage[] messages = { message };
    //SendEmailResult[] results = connection.sendEmail(messages);
  Messaging.sendEmail(new Messaging.SingleEmailMessage[] { message });
  // if (results[0].isSuccess()) {
  //      System.out.println('The email was sent successfully.');
   // } else {
    //   System.out.println('The email failed to send: '+
      //    results[0].getErrors()[0].getMessage());
  //  }
}