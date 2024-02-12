
({
    // Function to handle the COI download API request
    handleCOIDownload: function(component, event, helper) {
        // Perform authorization check to ensure the user is authorized
        if (!helper.isAuthorizedUser()) {
            helper.showError('You are not authorized to access this API.');
            return;
        }
        
        // Generate the COI in real-time
        var coi = helper.generateCOI(component.get('v.insuredInfo'));
        
        // Check if COI generation was successful
        if (!coi) {
            helper.showError('Failed to generate the COI.');
            return;
        }
        
        // Convert the COI to a readable and printable format
        var printableCOI = helper.convertToPrintableFormat(coi);
        
        // Create a temporary link to download the COI
        helper.downloadCOI(printableCOI);
    },
    
    // Other helper functions...
})
