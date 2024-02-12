e example unit tests for the given class COI download API:

1. Test for unauthorized user:
```
@isTest
static void testHandleCOIDownload_UnauthorizedUser() {
    // Create a test component and event
    Test.startTest();
    COIDownloadAPI component = new COIDownloadAPI();
    component.isAuthorizedUser = false;
    component.handleCOIDownload();
    Test.stopTest();
    
    // Verify that an error message is displayed
    System.assertEquals('You are not authorized to access this API.', component.errorMessage);
}
