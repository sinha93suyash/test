public class ContactSearch {
    public static List<Contact> searchForContacts(String l_name,String postal_code){
        Contact[] Contclist = [Select Id,Name from Contact where LastName=:l_name and MailingPostalCode=:postal_code];
        System.debug(Contclist);
                return Contclist;

        
    }
}