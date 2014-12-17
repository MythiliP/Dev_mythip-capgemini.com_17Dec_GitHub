public with sharing class OpportunityTeamController {
    
    public List<OpportunityTeamMember> oppTeamList{get;set;}

    public OpportunityTeamController(ApexPages.StandardController controller) {
            Opportunity opp=(Opportunity)controller.getRecord();
            List<Opportunity> oppList=[Select id,(select UserId from OpportunityTeamMembers) from Opportunity where id=:opp.Id];
            oppTeamList=oppList[0].OpportunityTeamMembers;
            if(oppTeamList.size()==0){
                ApexPages.addmessage(new ApexPages.message(ApexPages.severity.WARNING,'NO OPPORTUNITY MEMBERS'));
            }
    }

}