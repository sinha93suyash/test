public class ContactAndLeadSearch {
    
    Public Static List<List<sObject>> searchContactsAndLeads(String S){
        
List<List<sObject>> searchList = [FIND 'Smith' IN ALL FIELDS 
                   RETURNING Account(Name),Lead (FirstName,LastName)];
Account[] searchAccounts = (Account[])searchList[0];
Lead[] searchContacts = (Lead[])searchList[1];
                System.debug('list'+searchList);

    return searchList;
        
    }

}