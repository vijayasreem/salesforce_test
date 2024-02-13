s a sample Apex class for the given user story:

```apex
public class LoanSearchController {
    public String loanId { get; set; }
    public String message { get; set; }
    
    public void statusCheck() {
        Loan_Application__c loanRecord = [SELECT Id, Email__c FROM Loan_Application__c WHERE Loan_Id__c = :loanId LIMIT 1];
        
        if (loanRecord != null) {
            // Generate a random four-digit OTP
            Integer otp = generateOTP();
            
            // Send the OTP to the loan application's email address
            sendOTP(loanRecord.Email__c, otp);
            
            message = 'An OTP has been sent to your email address. Please check your email to continue.';
        } else {
            message = 'No loan record found with the given Loan ID.';
        }
    }
    
    private Integer generateOTP() {
        // Logic to generate a random four-digit OTP
        // Replace with your custom implementation
        return Math.round(Math.random() * 9000) + 1000;
    }
    
    private void sendOTP(String emailAddress, Integer otp) {
        // Logic to send the OTP to the loan application's email address
        // Replace with your custom implementation
        // Ensure secure and robust email sending implementation
    }
}
