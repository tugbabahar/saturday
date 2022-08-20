public class contacthandler_assg {
  public static void createcontact (List<account> accTriggerNew, 
                                     List<account> accTriggerOld,
                                     Map<id, account> accTriggerNewMap,
                                     Map<id, account> accTriggerOldMap) {
/*List<contact> listCon = new List<contact>();
for (Account eachAcc : accTriggerNew) {
     contact cn = new contact();
     cn.LastName = 'Tugba ' +eachAcc.name;
     cn.AccountId = eachAcc.id;   
     listCon.add(cn);                                    
      }
      insert listCon;
}*/

}
public static void updateAccountRollUpField(set<id> accountids) {
  //Fetch all accounts and its related contact using inner query
  List<account> listAccounts = [select id, number_of_contacts__c, (select id from Contacts) from account where id in :accountids];
  for (account eachAccount : listAccounts) {
      List<contact> accContacts = eachAccount.contacts;
      //get number of contact.
      integer noOfContacts = accContacts.size();
      eachAccount.number_of_contacts__c = noOfContacts;
  }
  update listAccounts;

}

}


