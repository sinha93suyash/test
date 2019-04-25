public class RandomContactFactory {
    
    Public Static List<Contact>generateRandomContacts(Integer c_ount,String L_name){
        List<Contact>Contacts = new List<Contact>();
        For(Integer i=0;i<c_ount;i++ ){
            Contact c= new Contact(Firstname ='Test'+i,Lastname=L_name);
            Contacts.add(c);
        }
            Return Contacts;
        }
        
    }