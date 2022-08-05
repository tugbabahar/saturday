public class salesforceproject_assg {
 /*public static void salesforceprojectinsert() {
    List<Salesforce_Project__c> listSF = new List<Salesforce_Project__c>();
   for (Integer i = 1; i <=5; i++) {
    Salesforce_Project__c sf = new Salesforce_Project__c();
    sf.Project_Name__c= 'TestTask'+ i ;
    listSF.add(sf);
   }for (Salesforce_Project__c each : listSF) {
     System.debug('testcase inserted names ==> '+each);
   }
   if (!listSF.isEmpty()) insert listSF;  
 }*/
 public static void salesforceprojectupdate() {
    List<Salesforce_Project__c> SFP = [select Project_Name__c from Salesforce_Project__c where Project_Name__c like'%TestTask%'limit 1];
    Salesforce_Project__c SFpr = new Salesforce_Project__c();
    SFpr.Project_Name__c = 'Testing Task ';  
    System.debug('project updated name ==> '+SFpr);
    
    update SFpr; 
 }
    
}