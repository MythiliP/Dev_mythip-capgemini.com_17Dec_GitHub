public with sharing class EmailController {

    public PageReference email() {
        Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
        message.setToAddresses(new String[] {'mythilikumar.19@gmail.com'});
    message.setReplyTo('support@acme.com');
    message.setSenderDisplayName('Salesforce Support');    
    message.setSubject('hi');
    message.setPlainTextBody('Body--->hello');
    Messaging.sendEmail(new Messaging.SingleEmailMessage[] { message });
        return null;
    }

}