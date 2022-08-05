public  class DmlDemo {
   public static void dmlInsert_stndObj() {
    Account acc = new Account();
    acc.Name = 'SoftInnovas';
    insert acc;
    System.debug(acc);
    
   }
   public static void dmlInsertDemo_cstmObj() {
    salesforce_project__c sp = new salesforce_project__c();
    sp.project_name__c = ' Teach DML to falcons';
    sp.description__c = 'All 40 % are great learners';
    insert sp;
    System.debug(sp);
   }
   public static void dmlUpdateDemo_3() {
      Account acc = [select id,name,site from Account where name ='SoftInnovas'limit 1];
      acc.Name='SoftInnovas Inc. ';
      acc.site = 'www.softinnovas.com';
      update acc;
      System.debug('acc = '+ acc);
   }
   public static void dmlUpdateDemo_2() {
      Account acc = [select id,name from Account where name='SoftInnovas Inc.' limit 1];
      Contact cnt = new Contact();
      cnt.LastName = 'Biden';
      cnt.AccountId = acc.Id;
      insert cnt;
   }
   
   public static void dmlInsertRelatedDemo_2() {
      Salesforce_Project__c sp = [select id, name from Salesforce_Project__c order by CreatedDate DESC limit 1];

      Salesforce_Ticket__c st = new Salesforce_Ticket__c();
      st.Subject__c = 'Learn DML in APEX';
      st.Priority__c = 'High';
      st.Status__c = 'New';
      st.Requested_by_date__c = date.newInstance(2022, 7, 29);
      st.Salesforce_Project__c = sp.id;

      insert st;
      system.debug('st = ' + st);
  }
  public static void dmlMultipleRecordInsert_right() {
   List<account> listAcc = new List<account>();
   Account acc1 = new Account();
   acc1.name = 'bulk acc 1';
   listAcc.add(acc1);
   Account acc2 = new Account();
   acc2.name = 'bulk acc 2';
   listAcc.add(acc2);
   
   Account acc3 = new Account();
   acc3.name = 'bulk acc 2';
   listAcc.add(acc3);

   insert listAcc;
  }*/
  public static void dmlMultipleRecordInsert_right2() {
   //1. we create a new LIST<sObject>
   List<account> listAccount = new list<account>();

   for (Integer i = 0; i < 200; i++) {
       account acc = new account();
       acc.name = 'SoftInnovas 29July v'+i;
       acc.AccountNumber = 'Accis-'+i;
       acc.Active__c = 'Yes';
       listAccount.add(acc);
   }

   system.debug('size of list = ' + listAccount.size());
   if (!listAccount.isEmpty()) {
       insert listAccount;
   }
}

  }



