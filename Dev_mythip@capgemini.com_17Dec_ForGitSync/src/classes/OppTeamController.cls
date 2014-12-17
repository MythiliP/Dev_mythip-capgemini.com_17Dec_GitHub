public with sharing class OppTeamController {

    public List<OpportunityTeamMember> oppTeam{get;set;}
   
    public OppTeamController(ApexPages.StandardController controller) {
    
        Opportunity opp=(Opportunity)controller.getRecord();
        List<Opportunity> oppList=[select id,(select UserId,TeamMemberRole from OpportunityTeamMembers) from Opportunity where id=:opp.Id];
        oppTeam=oppList[0].OpportunityTeamMembers;
        if(oppTeam.size()==0){
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.INFO,'No Opportunity Team assocaiated with this opportunity'));
        }
    
    }

}