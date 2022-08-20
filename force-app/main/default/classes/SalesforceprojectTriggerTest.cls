@istest
public with sharing class SalesforceprojectTriggerTest {
   @istest
   private static void sfpTest() {
    Salesforce_Project__c sfp = new Salesforce_Project__c();
    sfp.Project_Name__c = ' New Record';
    insert sfp;
   }
}
