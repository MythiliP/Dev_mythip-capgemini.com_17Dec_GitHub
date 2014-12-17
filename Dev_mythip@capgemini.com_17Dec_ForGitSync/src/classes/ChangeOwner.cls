global class ChangeOwner{

webservice static string change (String oppId){

List<Opportunity> oppList=[select Id,(Select UserId from OpportunityTeamMembers where TeamMemberRole='Account Manager') from Opportunity where id=:oppId];
Id userId=oppList[0].OpportunityTeamMembers[0].UserID;
oppList[0].OwnerId=UserId;
update oppList[0];
return 'Success';

}
}