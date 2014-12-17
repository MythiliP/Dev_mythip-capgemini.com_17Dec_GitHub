/********************************************************************************
Name:  CustomerLeadCaptureController()
Copyright © 2011  Cycle30
======================================================
======================================================
Purpose:
-------
To capture the current customer device interest
======================================================
======================================================
History
-------
VERSION  AUTHOR                DATE        DETAIL              
  1.0 - Sivasubramanian R    27/12/2011   INITIAL DEVELOPMENT  
*********************************************************************************/   

public with sharing class CustomerLeadCaptureController {
        //Non-static variables
        public CustomerLeadDisplay custLeadDisplay {get;set;}
        public String deviceCode {get;set;}
        
        //Constructor
        public CustomerLeadCaptureController(){
                system.debug(LoggingLevel.DEBUG,'Entering CustomerLeadCaptureController:Constructor');
                //Invoke private method to populate the details on the screen
                fetchInterestedDeviceDetails();
                system.debug(LoggingLevel.DEBUG,'Exiting CustomerLeadCaptureController:Constructor');
        }
        
    /*******************************************************************
    Purpose     : Capture the customer contact details and save as
                      current customer lead
    Parameters  : None
    Returns     : PageReference as null to display the current page
    ********************************************************************/
        public PageReference captureLead(){
        system.debug(LoggingLevel.DEBUG,'Entering CustomerLeadCaptureController:captureLead');          
                PageReference targetPage=null;
                try{
                        
                }catch(Exception e){
                        system.debug(LoggingLevel.ERROR,'Error when saving current customer lead details'+e.getMessage());
                }
        system.debug(LoggingLevel.DEBUG,'Exiting CustomerLeadCaptureController:captureLead');           
                return targetPage;
        }
        
    /*******************************************************************        
    Purpose     : Fetch and populate the interest device details 
    Parameters  : None
    Returns     : None
    ********************************************************************/
        private void fetchInterestedDeviceDetails(){
        system.debug(LoggingLevel.DEBUG,'Entering CustomerLeadCaptureController:fetchInterestedDeviceDetails');
                try{
                        //1.Get the device code from the request
                        deviceCode=ApexPages.currentPage().getParameters().get('deviceCode');
                        
                        if(deviceCode!=null && deviceCode.trim()!=''){
                                //Invoke Utility method to fetch the interested device details
                        } 
                        
                }catch(Exception e){
                        system.debug(LoggingLevel.ERROR,'Error when fetching the interested device details '+e.getMessage());
                }
        system.debug(LoggingLevel.DEBUG,'Exiting CustomerLeadCaptureController:fetchInterestedDeviceDetails');          
        }
        

}