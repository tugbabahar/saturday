public class ContactTriggerHandler {
  /*  public static void contactUpdateValidation1(list<Contact> conTriggerNew ,
                                                 Map<id, contact> conTriggerNewMap,
                                                 List<Contact> conTriggerOld,
                                                 Map<id, Contact> conTriggerOldMap) {
              for (contact eachContact : conTriggerNew) {
                contact oldContact = conTriggerOldMap.get(eachContact.id);
                if (oldContact.LeadSource == 'Partner Referral') {
                    eachContact.addError('Cannot update\' Partner Referral \' contacts');
              }                                       
    }
}
 public static void contactUpdateValidation2(list<Contact> conTriggerNew ,
                                                 Map<id, contact> conTriggerNewMap,
                                                List<Contact> conTriggerOld,
                                                Map<id, Contact> conTriggerOldMap) {
        for (contact eachContact : conTriggerNew) {
           if (eachContact.LeadSource != conTriggerOldMap.get(eachContact.id).LeadSource) {
            eachContact.LeadSource.addError('Cannot update LEAD SOURCE! please USER.');
           } 
        }
    }*/  /* When a new contact is created for an existing account then set contact other phone as account phone*/
   /* public static void ContactUpdate(List<contact> conTriggerNew, 
                                    List<contact> conTriggerOld,
                                    Map<id, contact> conTriggerNewMap,
                                    Map<id, contact> conTriggerOldMap) {
                                                                                   
    set<id> AccId = new   set<id>();   
    for (contact eachcon : conTriggerNew) {
     AccId.add(eachcon.AccountId);
        
    } 
    List<Account> AccList = [select id, Phone from account where id in : AccId];
    for (account eachAcc : AccList) {
        for (contact eachCn : conTriggerNew) {
            System.debug('other phone '+eachCn.otherPhone);
            System.debug('phone '+eachAcc.phone);
            eachCn.OtherPhone = eachAcc.phone;
        }
    }
    

}*/ /* When a new contact is created for an existing account then set contact other phone as account
phone*/
/*public static void ContactUpdate2(List<contact> conTriggerNew, 
                                    List<contact> conTriggerOld,
                                    Map<id, contact> conTriggerNewMap,
                                    Map<id, contact> conTriggerOldMap) {
     set<id> AccId = new   set<id>();   
     for (contact eachcon : conTriggerNew) {
     AccId.add(eachcon.AccountId);
    } 
    List<Account> AccList = [select id, Phone from account where id in : AccId];
    Map<Id,Account> conMap = new Map<Id,Account>();
    for (account eachAcc : AccList) {
        conMap.put(eachAcc.id, eachAcc);
    }
    for (contact eachCon : conTriggerNew) {
        if (conMap.containsKey(eachCon.AccountId)) {
            eachCon.otherPhone = conMap.get(eachCon.AccountId).phone;
        }
    }
}*/
/*public static void ContactUpdate3(List<contact> conTriggerNew) {

for (contact eachCon : conTriggerNew) {
    if (eachCon.accountId != null) {
      account acc = [ select id,name,phone from account where id =: eachCon.AccountId ]; 
      eachCon.OtherPhone = acc.Phone;
    }

}*//* When a new contact is created for an existing account then set contact other phone as account phone*/
/*public static void ContactUpdate4(List<contact> conTriggerNew, 
                                    List<contact> conTriggerOld,
                                    Map<id, contact> conTriggerNewMap,
                                    Map<id, contact> conTriggerOldMap) {
    Set<id> setConIds = new Set<id>();
      for (contact eachCon : conTriggerNew) {
        if (eachCon.AccountId != Null) {
            setConIds.add(eachCon.AccountId);
        }
      } 
      List<Contact> conList = [select id,otherPhone,account.phone from Contact where Id in : SetConIds];  
      if (!conList.isEmpty()) {
        for (Contact eachc : conList) {
            eachc.OtherPhone = eachc.Account.phone; 
        }
        update conList;
      }                               
}*//*1. Create one new field in the contact object ‘Main Contact Person’ (checkbox).
When ‘Main Contact Person’ is changed to Checked in contact → Update its account’s FAX field
as that contact’s FAX Field.
- Example:
Account → Name = AccQnC, Fax = 999888777
Contacts → Name = QnC1 , Main Contact Person = false, Fax = 111222333
Contacts → Name = QnC2 , Main Contact Person = false, Fax = 111222444
Contacts → Name = QnC3 , Main Contact Person = false, Fax = 111222555
Contacts → Name = QnC6 , Main Contact Person = false, Fax = 111222666
Update QnC6 contact → Main contact person = true
→ Auto update account’s FAX to 111222666 (QnC6’s fax value)
2. Write the Test class for the triggers and trigger handlers written for the above logic.*/

/*public static void UpdateAccount(list <Contact> ccTriggerNew,
                                    list <contact> ccTriggerOld,
                                    map <id,Contact> ccTriggerNewMap,
                                    map <id,Contact> ccTriggerOldMap) {
    set <id> contIds = new set<id> ();
    for (contact eachCont : ccTriggerNew) {
        if(eachCont.main_contact_person__c!=ccTriggerOldMap.get(eachCont.id).main_contact_person__c){
            contIds.add(eachCont.AccountId);
        }
        system.debug(contIds);
    }   

    updateAccountFax(contIds);
    }  */
    //pass accIds and contactIds
    public static void updateAccountFax(set <id> contIdsAcc) {
        List<Account> listOfAcc = [select id,fax, (select fax from Contacts where main_contact_person__c = true order by LastModifiedDate desc LIMIT 1)from Account where id in : contIdsAcc];
        system.debug(listOfAcc);
        for (Account eachAcc : listOfAcc) {
            eachAcc.Fax = eachAcc.Contacts[0].Fax;
            
        }
        if(!listOfAcc.isEmpty()){
        update listOfAcc;
        }
        
    }
    public static void updateAccountsContactSize(set<id> setAccIds) {
        List<Account> listAcc = [select id,Number_of_contacts__c ,(SELECT id from contacts) from account where id IN : setAccIds];
        for (account eachAcc : listAcc) {
            eachAcc.Number_of_contacts__c = eachAcc.contacts.size();
        }
       update listAcc; 
    }
}















