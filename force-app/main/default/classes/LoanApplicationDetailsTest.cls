@IsTest
private class LoanApplicationDetailsTest {
    
    @IsTest
    static void testGetLoanApplicationDetails() {
        // Create a test Loan Application record
        Loan_Application__c testLoanApplication = new Loan_Application__c(
            Name = 'Test Loan Application',
            Aadhar_Number__c = '123456789012',
            Email__c = 'test@example.com'
        );
        
        insert testLoanApplication;
        
        // Call the method under test
        Loan_Application__c retrievedLoanApplication = LoanApplicationDetails.getLoanApplicationDetails(testLoanApplication.Id);
        
        // Verify that the loan application details are retrieved correctly
        System.assertEquals(testLoanApplication.Id, retrievedLoanApplication.Id);
        System.assertEquals(testLoanApplication.Name, retrievedLoanApplication.Name);
        System.assertEquals(testLoanApplication.Email__c, retrievedLoanApplication.Email__c);
        System.assertEquals(testLoanApplication.Aadhar_Number__c, retrievedLoanApplication.Aadhar_Number__c);
    }
    
    @IsTest
    static void testGetLoanApplicationDetails_Exception() {
        // Call the method under test with an invalid loan ID
        Loan_Application__c retrievedLoanApplication = LoanApplicationDetails.getLoanApplicationDetails('invalidId');
        
        // Verify that the method returns null when an exception occurs
        System.assertEquals(null, retrievedLoanApplication);
    }
}