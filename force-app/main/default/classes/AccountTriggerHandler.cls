public class AccountTriggerHandler {
    public static void updateAccountDescription(List<account> accTriggerNew, 
    List<account> accTriggerOld,
    Map<id, account> accTriggerNewMap,
    Map<id, account> accTriggerOldMap) {
     for (Account eachAcc : accTriggerNew) {
         //when inserted
         boolean updateDesc = false;
         //in insert oldMap is NULL so. If OLDMAP is NULL then INSERT.
         if(accTriggerOldMap == null && eachAcc.Active__c == 'Yes'){
             updateDesc = true;
         }
         //when updated. If OLDMAP is NOT NULL then UPDATE
         if(accTriggerOldMap != null){
             map<id, account> triggerOldMap = accTriggerOldMap;
             Account oldAccount = triggerOldMap.get(eachAcc.Id);
             Account newAccount = eachAcc;
             if(newAccount.Active__c == 'Yes' && newAccount.Active__c != oldAccount.Active__c){
                 updateDesc = true;
             }
         }
         if(updateDesc){
             eachAcc.Description = 'Account is now active. Enjoy!!!!!';
         }
     }
    }
/* public static void updateVIPForAllContacts  (List<account> accTriggerNew, 
                                                 List<account> accTriggerOld,
                                                 Map<id, account> accTriggerNewMap,
                                                 Map<id, account> accTriggerOldMap) {
       Set<id> setAccIDs = new Set<id>(); 
       for (account eachAcc : accTriggerNew) {
        if (eachAcc.VIP__c != accTriggerOldMap.get(eachAcc.Id).VIP__c) {
            setAccIDs.add(eachAcc.Id);
        }
        
       }
       List<contact> listContacts = [Select id,name,AccountId,vip__c from contact where AccountId in : setAccIDs];
       for (contact  eachContact : listContacts) {
        eachContact.VIP__c = accTriggerNewMap.get(eachContact.Account.Id).VIP__c;
        
       }
       update listContacts;
    }*/
     public static void updateVIPForAllContacts(List<account> accTriggerNew, 
    List<account> accTriggerOld,
    Map<id, account> accTriggerNewMap,
    Map<id, account> accTriggerOldMap) {
set<id> setAccIds = new set<id>();
for (account eachAcc : accTriggerNew) {
account oldAccount = accTriggerOldMap.get(eachacc.Id);
if(eachAcc.vip__c != oldAccount.vip__c){
setAccIds.add(eachAcc.Id);
}
}
//check if atleast one account's vip is updated.
if(!setAccIds.isEmpty()){
//fetch all contacts for accounts whose vip field is changed.
List<Contact> listContacts = [select id, name, vip__c, accountid from contact where accountid in :setAccIds];
//check if atleast one contact is found
if(!listContacts.isEmpty()){
for (contact eachContact : listContacts) {
account newAccountRecord = accTriggerNewMap.get(eachContact.accountid);
eachContact.VIP__c = newAccountRecord.VIP__c;// GET IT FROM ACCOUNT's VIP FIELD
}
//update all the contacts
update listContacts;
}   
}
}

/* Whenever New Account Record is created, an associated Contact Record must be created
automatically. Contact record fields as below:
- Account name as Contact last name
- Account phone as contact phone
public static void ValidateAnnulRev(List<account> accTriggerNew, 
                                    List<account> accTriggerOld,
                                    Map<id, account> accTriggerNewMap,
                                   Map<id, account> accTriggerOldMap) {

    if (accTriggerOldMap != Null) {
       for (account eachAcc : accTriggerNew) {
        if(eachAcc.AnnualRevenue < accTriggerOldMap.get(eachAcc.id).AnnualRevenue || eachAcc.AnnualRevenue == null){
          System.debug('Annual Revenue for an account cannot be reduced');
            eachAcc.AnnualRevenue.addError('Annual Revenue for an account cannot be reduced');
         
        }
       }
    }
}*/


  /* Write a trigger on the Account when the Account is updated check all opportunities related to
the account. Update all Opportunity Stage to close lost if stage name not already set to closed
won.*/
 /*public static void createContact(List<account> accTriggerNew, 
                                    List<account> accTriggerOld,
                                    Map<id, account> accTriggerNewMap,
                                    Map<id, account> accTriggerOldMap) {
                
     List<Contact> listCont = new  List<Contact>();                                  
    for (account eachAcc : accTriggerNew) {
        contact con = new contact();
        con.LastName = eachAcc.name;
        con.Phone= eachAcc.Phone;
        con.AccountId = eachAcc.id;
        listCont.add(con);
    }
    if(!listCont.isEmpty()) insert listCont;
 }*/

 /*public static void AccountUpdate(List<account> accTriggerNew){
List<Opportunity> listOfOpp = [select id,stageName from Opportunity where AccountId in : accTriggerNew];
            
        
          for (opportunity eachOpp : listOfOpp) {
            if (eachOpp.StageName != 'Closed Won') {
                eachOpp.StageName = 'Closed Lost';
            }    
          }    
          update listOfOpp;                          
  }*/


 /* Whenever an Account phone number is modified, update all the contacts of the Account as
follows:
- Contacts otherPhone as Old phone no of account
- Contacts mobilePhone as New phone no of Account.*/

 /* public static void AccountContactUpdate(List<account> accTriggerNew, 
                                            List<account> accTriggerOld,
                                            Map<id, account> accTriggerNewMap,
                                            Map<id, account> accTriggerOldMap) {
    Set<id> accIds = new set<id>();
    for (account eachAcc : accTriggerNew) {
        if (eachAcc.Phone != accTriggerOldMap.get(eachAcc.id).phone) {
           accIds .add(eachAcc.id) ;
        }
    }if(!accIds.isEmpty()){
    List<Contact> listCon = [select id,otherPhone,mobilePhone,accounId from contact where accountId in : accIds];
        for (contact eachCon : listCon) {
        eachCon.OtherPhone =accTriggerOldMap.get(eachCon.AccountId).Phone;
        eachCon.MobilePhone = accTriggerNewMap.get(eachCon.AccountId).phone;
        }
      }
      update listCon;
   }*/
    
}
   