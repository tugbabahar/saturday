public class DMLAssignment {
   public static void DMLAccount() {
    Account acc = new Account ();
    acc.name = 'Testdata';
    insert acc;
    System.debug('test data is ==> ' + acc);
   }
   public static void SalesforceProject() {
    Salesforce_Project__c sp = new Salesforce_Project__c();
    sp.Project_Name__c = 'Deneme';
    insert sp;
    System.debug(sp);
   }
}
