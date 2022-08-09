public class Trigger_Map {
   /public static void InsertSF_Project() {
        Salesforce_Project__c sf = new Salesforce_Project__c();
        sf.Project_Name__c= 'tugba';
        sf.Status__c = 'new';
        sf.Description__c = 'new record';
        insert sf;
        System.debug('inserted record is '+sf);
    }
    public static void UpdateSf_project() {
        Salesforce_Project__c sfU = [select id , Project_Name__c from Salesforce_Project__c where Project_Name__c = 'tugba' limit 1] ;
        sfU.Project_Name__c =  'Tugba`s updated  record ';
        update sfU;
        System.debug(sfU);
    }
}


