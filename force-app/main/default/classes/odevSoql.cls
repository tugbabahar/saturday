public class odevSoql {
    public static void avrAcc() {
        List<AggregateResult> listAcc = [select  AVG(NumberOfEmployees) from Account ];
        System.debug(listAcc);
    }
    public static void avrNmbr() {
        List<AggregateResult> listAcc2 = [select AVG(NumberOfEmployees ),Industry from Account GROUP BY Industry];
        System.debug(listAcc2);
    }
    public static void mxValue() {
        List<AggregateResult> listAcc3 = [select AVG(NumberOfEmployees ) , Max(NumberOfEmployees) Industry from Account ];
       System.debug(listAcc3);
     }
    public static void prntChld() {
        List<Contact> listContact = [select  Account.Id, account.name from contact];
        for (Contact eachCnt : listContact) {         
            String accName = eachCnt.Account.name;
            string accId = eachCnt.Account.Id;   
        System.debug('account name is '+ accName + ' account id is '+ accId );
    }
}
}
