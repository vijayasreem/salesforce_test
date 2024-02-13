Here are some unit tests for the `LoanSearchController` class:

```apex
@IsTest
public class LoanSearchControllerTest {
    @IsTest
    static void testStatusCheckWithValidLoanId() {
        // Create a test loan record
        Loan_Application__c testLoan = new Loan_Application__c(Loan_Id__c = '12345', Email__c = 'test@test.com');
        insert testLoan;
        
        // Create an instance of the controller
        LoanSearchController controller = new LoanSearchController();
        controller.loanId = '12345';
        
        // Call the statusCheck method
        controller.statusCheck();
        
        // Verify that the message is set correctly
        System.assertEquals('An OTP has been sent to your email address. Please check your email to continue.', controller.message);
    }
    
    @IsTest
    static void testStatusCheckWithInvalidLoanId() {
        // Create an instance of the controller
        LoanSearchController controller = new LoanSearchController();
        controller.loanId = '54321';
        
        // Call the statusCheck method
        controller.statusCheck();
        
        // Verify that the message is set correctly
        System.assertEquals('No loan record found with the given Loan ID.', controller.message);
    }
    
    @IsTest
    static void testGenerateOTP() {
        // Create an instance of the controller
        LoanSearchController controller = new LoanSearchController();
        
        // Call the generateOTP method
        Integer otp = controller.generateOTP();
        
        // Verify that the generated OTP is a four-digit number
        System.assertEquals(4, String.valueOf(otp).length());
    }
    
    // Note: It is not possible to write a unit test for the sendOTP method as it is a private method and cannot be directly called from the test class. However, you can test the functionality of this method by writing an integration or system test.
}
