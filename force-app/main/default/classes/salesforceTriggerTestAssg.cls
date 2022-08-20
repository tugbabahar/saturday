@istest
public class salesforceTriggerTestAssg {
  @istest 
  private static void createRecord() {
    Salesforce_Project__c sp = new Salesforce_Project__c();
    sp.Project_Name__c = 'Trying to learn';
    insert sp;
  }
}
