
public class LoanApplicationDetails {
    
    // Method to retrieve loan application details by Loan ID
    public static Loan_Application__c getLoanApplicationDetails(String loanId) {
        try {
            // Query for the loan application details
            Loan_Application__c loanApplication = [
                SELECT Id, Name, Email__c
                FROM Loan_Application__c
                WHERE Id = :loanId
                LIMIT 1
            ];
            
            return loanApplication;
        } catch(Exception e) {
            // Handle any exceptions or errors that may occur
            System.debug('An error occurred while retrieving loan application details: ' + e.getMessage());
            return null;
        }
    }
}
