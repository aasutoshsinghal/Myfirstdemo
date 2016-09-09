public class MyExtension {
    private final account acct;
    
    public Myextension(ApexPages.StandardController controller){
        this.acct = (Account)controller.getrecord();
        }
        
    public string gettitle(){
        return 'account:' +acct.name+ '('+acct.id+')';
        
    }    

}