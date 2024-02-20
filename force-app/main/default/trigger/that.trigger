
trigger CarMortgageLoanApplicationTrigger on CarMortgageLoanApplication__c (before insert) {
    public static void applyForLoan(List<CarMortgageLoanApplication__c> loanApplications) {
        List<CarMortgageLoanApplication__c> inPersonApplications = new List<CarMortgageLoanApplication__c>();
        List<CarMortgageLoanApplication__c> websiteApplications = new List<CarMortgageLoanApplication__c>();
        List<CarMortgageLoanApplication__c> mobileApplications = new List<CarMortgageLoanApplication__c>();

        for (CarMortgageLoanApplication__c application : loanApplications) {
            if (application.ApplicationChannel__c == 'In-Person') {
                inPersonApplications.add(application);
            } else if (application.ApplicationChannel__c == 'Website') {
                websiteApplications.add(application);
            } else if (application.ApplicationChannel__c == 'Mobile') {
                mobileApplications.add(application);
            }
        }

        if (!inPersonApplications.isEmpty()) {
            // Process in-person loan applications
            // Add your logic here
        }

        if (!websiteApplications.isEmpty()) {
            // Process website loan applications
            // Add your logic here
        }

        if (!mobileApplications.isEmpty()) {
            // Process mobile loan applications
            // Add your logic here
        }
    }
}
