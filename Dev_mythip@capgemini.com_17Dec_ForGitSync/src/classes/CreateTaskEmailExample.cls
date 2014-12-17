global class CreateTaskEmailExample implements Messaging.InboundEmailHandler {
global Messaging.InboundEmailResult handleInboundEmail(Messaging.inboundEmail email,Messaging.InboundEnvelope env){
    Messaging.InboundEmailResult result = new Messaging.InboundEmailResult();
    return result;
}
}