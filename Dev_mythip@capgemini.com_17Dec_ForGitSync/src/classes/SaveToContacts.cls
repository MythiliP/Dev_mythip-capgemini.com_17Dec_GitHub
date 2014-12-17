public with sharing class SaveToContacts {

    public String contactDept { get; set; }

    public Boolean contactEmailOptOut { get; set; }

   
public String contactName{get;set;}

public String conBirthDate{get;set;}

public void saveToCon(){
Contact con=new Contact();
con.LastName=contactName;
con.Department=contactDept;
con.HasOptedOutOfEmail=contactEmailOptOut;
con.Birthdate=Date.parse(conBirthDate);
insert con;
}

}