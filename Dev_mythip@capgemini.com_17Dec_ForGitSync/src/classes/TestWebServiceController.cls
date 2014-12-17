public with sharing class TestWebServiceController {
 public String accName { get; set; }
 


    public void sendToOtherInstance() {
       JSONGenerator gen = JSON.createGenerator(true);
       gen.writeStartObject();
       gen.writeStringField('Acc Name',accName );
       gen.writeEndObject();
       String pretty = gen.getAsString();
        String passAccName=pretty;
        system.debug('%%%%%%%%%%%%%%%%'+passAccName);
        Http h = new Http();
        HttpRequest req = new HttpRequest();
       req.setheader('Content-Type','application/json'); 
        req.setEndpoint('https://testwebservice-developer-edition.ap1.force.com/services/apexrest/Account');
        req.setMethod('POST');
        req.setBody(passAccName);
        HttpResponse res = h.send(req);
   System.debug('*********************'+res.getBody());
  
    }


   
}