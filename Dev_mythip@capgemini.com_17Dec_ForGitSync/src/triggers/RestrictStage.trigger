trigger RestrictStage on Opportunity (before insert,before update) {

      if(Trigger.isUpdate){
      for(Opportunity opp:Trigger.New){
        Opportunity o=Trigger.OldMap.get(opp.Id);
        if(o.stageName=='Closed Won' && opp.stageName!='Closed Won'){
            opp.addError('Cannot change stage');
        }
        }
    
}

}