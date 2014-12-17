public with sharing class RedirectToPage2 {
	public String name{get;set;}
	public String age{get;set;}
	
	public RedirectToPage2(){
		this.name='Test';
		this.age='20';
	}
	
	public Pagereference redirect(){
		Pagereference testPage=null;
		testPage=Page.page2;
		testPage.setRedirect(false);
		return testPage;
	}

}