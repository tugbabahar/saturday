@isTest 
public  class primitivedata_AssgNewTest {
   @isTest 
   private static void prim_methodTest() {
      primitivedata_AssgNew.prim_method();
    id pass = '0016g000024a5DiAAI';
    string a = 'The following Id bellongs to Accounts';
    Boolean b = true;
    system.assertEquals('The following Id bellongs to Accounts', a);
   }
   @isTest 
   public static void insertsfTest() {
      primitivedata_AssgNew.insertsf();
list<Salesforce_Project__c> lstsf = new list<Salesforce_Project__c>();
for(Integer i=0;i<10;i++){
     Salesforce_Project__c varsf = new Salesforce_Project__c();
varsf.Project_Name__c='Phone23';
 lstsf.add(varsf);
   }
   insert lstsf;
}
@isTest
private static void updatesfTest() {
   primitivedata_AssgNew.updatesf();
   
list<Salesforce_Project__c> lstsf = [select id,Project_Name__c from Salesforce_Project__c];
System.assertEquals(1, lstsf.size());
System.assertEquals('Phone2', lstsf[0].Project_Name__c);
}
}

