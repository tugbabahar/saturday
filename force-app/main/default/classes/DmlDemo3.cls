public  class DmlDemo3 {
    public static void dmlMultipleRecordUpdate() {
        List<Account> listAcc = [select id,name FROM account];
        List<account> updateAccounts = new List<account>();
        for (account  acc : updateAccounts) {
            acc.Name=acc.name + ' via b.o';
            updateAccounts.add(acc);
        }
       if (!updateAccounts.isEmpty()) 
       update updateAccounts;    
    }
   }
