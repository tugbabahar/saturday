public class SOQL_Class {
   public static void account_SOQL() {
    List<account> listAcc = [select name,phone from account where (phone !=null)];
    System.debug(listAcc);
    List<account> listAccA = [select name from Account where name like '%a'];
    System.debug(listAccA);
   }
   public static void account_SOQL_2(string a) {
    List<account> listAcc2 = [Select name from Account ];
    List<account> eachAccount = new List<account>();
    for (account each : listAcc2) {
        if (each.name.contains(a)){
            eachAccount.add(each);
        }   
    }
    System.debug(eachAccount);
   }
   public static void contact_SOQL() {
    List<contact> listcont = [select name,phone, homePhone from contact where ( phone = null) and ( homePhone =null)];
    System.debug(listcont);
   }
   public static void account_SOQL_3() {
    List<account> listAccAnnuel = [select name,AnnualRevenue from Account where (AnnualRevenue!= NULL)];
    System.debug(listAccAnnuel);
   }

}
