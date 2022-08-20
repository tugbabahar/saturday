@isTest
public class DmlDemoTest {
   @isTest 
   private static void testInsertDml1() {
    DmlDemo.dmlInsert_stndObj();
    List<Account> checkAcc = [select id,name from Account];
    System.assertEquals(1, checkAcc.size());
    System.assertEquals('SoftInnovas', checkAcc[0].Name);
   }
   @isTest
  private static void testInsertDml2(){
    Account acc = new Account();
    acc.Name = 'SoftInnovas Inc.';
    insert acc;
    DmlDemo.dmlUpdateDemo_2();
    List<Contact> contacts = [ select id,accountId , name from contact];
    System.assertEquals(1, contacts.size());
    System.assertEquals(acc.id, contacts[0].AccountId);

   }
}
