public class DML2_Assgn {
   /*public static void insert_dml() {
    List<Account> listAcc = new List<Account>();
    Account acc = new Account();
    acc.name = ' Tugba assignment ';
     listAcc.add(acc);

     Account acc2 = new Account();
     acc2.name = ' Tugba assignment';
     listAcc.add(acc2);
     
     Account acc3 = new Account();
     acc3.name = 'Tugba assignment';
     listAcc.add(acc3);

   insert listAcc;
   System.debug(listAcc);
}*/
public static void updating_dml() {
List<Account> listAcc2 = [select name from Account where name like '%assignment%'];
List<account> listUptation = new List<account>();
for (account eachAcc : listAcc2) {
eachAcc.name = eachAcc.name + ' updation';
listUptation.add(eachAcc);
}
update listUptation;
System.debug(listUptation);
}
}

