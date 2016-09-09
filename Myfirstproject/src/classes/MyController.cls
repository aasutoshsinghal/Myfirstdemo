public with sharing class MyController {
    public id selectedAccount{get; set;}
    public List<Contact> ContactInformation {get; set;}


    public List<Account> getMyAccounts(){
        return [SELECT Id, Name, AccountNumber FROM Account ORDER BY
        LastModifiedDate DESC LIMIT 10];
    }
    
    public void accountclicked(){
        ContactInformation = [SELECT FirstName, LastName FROM Contact 
        Where AccountID = :selectedAccount ];
    }

}