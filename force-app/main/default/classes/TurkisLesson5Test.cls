@isTest
public  class TurkisLesson5Test {
    @isTest
    private static void createAccountTest() {
        string text = 'batch8';
        TurkisLesson5.createAccount(text);
         List<Account> accList = [select id,name from Account];
        System.assertEquals('batch8', accList[0].Name);

        
    }
}
