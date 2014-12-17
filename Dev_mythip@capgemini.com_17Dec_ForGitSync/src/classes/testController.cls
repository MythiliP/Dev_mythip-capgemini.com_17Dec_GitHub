public class testController {

    public PageReference render() {
        PageReference pageRef = new PageReference('/apex/first');
        pageRef.setredirect(true);
        return pageRef; 
    }

}