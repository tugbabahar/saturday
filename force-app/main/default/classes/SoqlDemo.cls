public class SoqlDemo {
    public static void accountSOQL_1() {
        List<Account> listAcc = [Select ID,Name from Account WHERE name like '%A%'];
        System.debug('account list = '+ listAcc);
        System.debug('size of listAcc = '+listAcc.size());

    Account acc = [select name,createdDate from account order by CreatedDate Desc limit 1];
    System.debug('last created account record = '+acc);  
}
public static void accountSOQL_2() {
    Account acc = [Select Id, Name,Phone, AccountNumber from Account ORDER BY CreatedDate desc LIMIT 1];
    System.debug('latest account created is '+ acc);
    String accName = acc.Name;
    String accPhone = acc.Phone;
    System.debug('accName = '+ accName+' phone is '+accPhone);
    System.debug('account number is '+ acc.AccountNumber);   
}
public static void accountSOQL_3() {
    List<Account> listAcc = [Select ID,Name,phone,AccountNumber from Account Order by createdDate desc];
    System.debug('all accounts '+listAcc);
    for (Account eachAccount : listAcc) {
        String accName = eachAccount.Name;
        String accPhone = eachAccount.Phone;
        System.debug('accName = '+ accName+' phone is '+ accPhone);
        System.debug('account number is '+ eachAccount.AccountNumber);    
    }     
}
public static void accountSOQL_Filter() {
    String accNameFilter = 'Salesforce Inc.';
    List<account> listAcc = [Select ID,Name from Account Where name = :accNameFilter];
    System.debug(listAcc);
}
public static void accountSOQL_Filter(string accNameFilter) {
    List<account> listAcc = [Select name,phone from Account Where name = :accNameFilter];
    System.debug(listAcc);
}
    
}