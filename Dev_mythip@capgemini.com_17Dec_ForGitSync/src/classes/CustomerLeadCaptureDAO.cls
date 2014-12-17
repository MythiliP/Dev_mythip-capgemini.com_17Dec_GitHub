/********************************************************************************
Name:  CustomerLeadCaptureDAO ()
Copyright © 2011  Cycle30
======================================================
======================================================
Purpose:
-------
This DAO class contains the methods for performing
DML operations related to Customer Lead capture
functionalities
======================================================
======================================================
History
-------
VERSION  AUTHOR                DATE        DETAIL              
  1.0 - Sivasubramanian R    27/12/2011   INITIAL DEVELOPMENT  
*********************************************************************************/   
public with sharing class CustomerLeadCaptureDAO {
	
    /*******************************************************************
    Purpose     : Save the customer lead details
    Parameters  : None
    Returns     : Boolean indicator specifying whether the customer
    		      lead details have been saved
    ********************************************************************/
	public static Boolean saveCustomerLeadDetails(){
		system.debug(LoggingLevel.DEBUG,'Entering CustomerLeadCaptureDAO:saveCustomerLeadDetails');
		Boolean isSaved=false;
		try{
			
		}catch(Exception e){
			system.debug(LoggingLevel.ERROR,'Error when saving current customer lead details'+e.getMessage());
		}
		
		system.debug(LoggingLevel.DEBUG,'Exiting CustomerLeadCaptureDAO:saveCustomerLeadDetails');	
		return isSaved;	
	}

    /*******************************************************************
    Purpose     : Fetch the device details
    Parameters  : deviceCode- Code of the device whose details are to be
    		      retrieved
    Returns     : Boolean indicator specifying whether the customer
    ********************************************************************/
	public static Boolean getDeviceDetails(String deviceCode){
		system.debug(LoggingLevel.DEBUG,'Entering CustomerLeadCaptureDAO:saveCustomerLeadDetails');
		Boolean isSaved=false;
		try{
			
		}catch(Exception e){
			system.debug(LoggingLevel.ERROR,'Error when saving current customer lead details'+e.getMessage());
		}
		
		system.debug(LoggingLevel.DEBUG,'Exiting CustomerLeadCaptureDAO:saveCustomerLeadDetails');	
		return isSaved;	
	}

}