public with sharing class MapSetExampleController {

    public PageReference setMethod() {
        Set<Integer> empIdSet=new Set<Integer>();
        empIdSet.add(10);
        empIdSet.add(20);
        system.debug('*****************************'+empIdSet);
        return null;
    }


    public PageReference mapMethod() {
        Map<Integer,String> empDetails=new Map<Integer,String>();
        empDetails.put(111,'Ram');
        empDetails.put(111,'John');
        system.debug('############################'+empDetails);
        return null;
    }

}