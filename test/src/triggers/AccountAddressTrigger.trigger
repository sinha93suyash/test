trigger AccountAddressTrigger on Account (before insert,before update) {
    
    for(Account a : Trigger.New){
        
        If(a.Match_Billing_Address__c = True){
            
            String ShippingPostalCode,BillingPostalCode;
            
            ShippingPostalCode=a.BillingPostalCode;
            BillingPostalCode=a.ShippingPostalCode;
            }
  
        else{
                a.addError('You can\'t delete this record!');

        }
        
        
    }

}