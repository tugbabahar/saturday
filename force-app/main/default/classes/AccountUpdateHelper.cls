public class AccountUpdateHelper {
    @InvocableMethod
    public static void updateAccountWebsite(List<id> accIds) {
        List<Account> accounts = [select id,name,website from Account where id in : accIds];
        for (account eachAcc : accounts) {
            eachAcc.Website = 'www.softinnovs.com';
        
        }
    
           update  accounts;
        }
    
}
