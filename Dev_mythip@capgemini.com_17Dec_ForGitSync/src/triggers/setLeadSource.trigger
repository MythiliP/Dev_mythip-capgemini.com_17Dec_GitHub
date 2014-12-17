trigger setLeadSource on Contact (before insert) {

for(Contact con:Trigger.New){
    con.LeadSource='Advertisement';
}

}