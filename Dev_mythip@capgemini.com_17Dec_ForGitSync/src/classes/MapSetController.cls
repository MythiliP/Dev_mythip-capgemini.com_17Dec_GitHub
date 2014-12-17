public with sharing class MapSetController {

    public void setTest(){
        Set<Integer> intSet=new Set<Integer>();
        intSet.add(10);
        intSet.add(10);
        system.debug('***************************'+intSet);
    }
    
    public void mapTest(){
        Map<Integer,String> mapTest=new Map<Integer,String>();
        mapTest.put(101,'Ram');
        mapTest.put(102,'Ram');
        //mapTest.put(102,'John');
        system.debug('########################'+mapTest);
    }
}