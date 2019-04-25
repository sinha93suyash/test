public class takecontacts {

    public static List<Contact> getcontacts(List<id>  accountIds){
        List<Contact> contactlist = [select id, phone,Email from Contact where Accountid in :accountids];
            return contactlist;
    }
    
}