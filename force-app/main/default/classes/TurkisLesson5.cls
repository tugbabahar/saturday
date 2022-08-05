public class TurkisLesson5 {
    public static void createAccount(string nm) {
        account acc = new Account();
        acc.name = nm;
        
        System.debug(nm+'  adinda bir account create edildi ');
        insert acc;
     List<Contact> conList = new List<Contact>();
        for (Integer i = 1; i <= 5; i++) {
            contact cn = new Contact();
            cn.FirstName=acc.name;
            cn.LastName='contact'+i;
            conList.add(cn);
            
        }
        insert conList;
    }
} 
