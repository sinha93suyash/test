@isTest
private class TestRestrictContactByName {
    @isTest static void TestDeleteAccountWithOneOpportunity() {
        // Test data setup
        // Create an account with an opportunity, and then try to delete it
        Contact acct = new Contact(LastName='INVALIDNAME');
               
        // Perform test
        Test.startTest();
        Database.SaveResult result = Database.Insert(acct, false);
        Test.stopTest();
        // Verify 
        // In this case the deletion should have been stopped by the trigger,
        // so verify that we got back an error.
  
        System.assertEquals('The Last Name "'+acct.LastName+'" is not allowed for DML',
                             result.getErrors()[0].getMessage());
    }
    
}