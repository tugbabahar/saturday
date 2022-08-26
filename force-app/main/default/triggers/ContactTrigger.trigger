 trigger ContactTrigger on Contact (before insert, before update, after insert, after update, after undelete) {
    /*Soru : Yeni bir Contact create edilip bir Accounta bağlandığında, Accounta bağlı bir Contact delete edildiğinde veya Bir Contact update edilerek bir Account ile bağlantısı kesilirse, bir Accounta bağlanırsa ya da bağlantı değişirse Accountta Number_of_Contacts__c fieldi güncellenecek..*/
     // Etkilenen Accountların id lerini toplayacağım bir liste oluşturuyorum..
    /* set<id> accIds = new Set<Id>();

     if (trigger.isAfter) {
         if (trigger.isInsert || trigger.isUndelete) {
             for (contact cn : trigger.new) {
                 if (cn.accountId != null) {
                     accIds.add(cn.accountId);
                 }
             }
         }
 
         if (trigger.isUpdate) {
             for (contact cn : trigger.new) {
                 if (cn.accountId != trigger.oldmap.get(cn.id).accountId) {
                     accIds.add(cn.accountId);
                     accIds.add(trigger.oldmap.get(cn.id).accountId);
                 }
             }
         }
 
         if (trigger.isDelete) {
             for (contact cn : trigger.old) {
                 if (cn.AccountId != null) {
                     accIds.add(cn.AccountId);
                 }
             }
         }
 
         if (!accIds.isEmpty()) {
             List<Account> accList = [ select id, name, 	Number_Of_Contacts__c, (select id from contacts) from Account where id in : accIds ];
             for (Account acc : accList) {
                 acc.Number_Of_Contacts__c = acc.contacts.size();
             }
             update accList;
         }
     }*/
    /* if (trigger.isBefore && trigger.isInsert) {
        ContactTriggerHandler.ContactUpdate(trigger.new,trigger.old,trigger.newMap,trigger.oldMap); 
    }*/
   /* if (trigger.isBefore && trigger.isInsert) {
        ContactTriggerHandler.ContactUpdate2(trigger.new,trigger.old,trigger.newMap,trigger.oldMap); 
    }*/
    /*if (trigger.isBefore && trigger.isInsert) {
        ContactTriggerHandler.ContactUpdate3(trigger.new); 
    }*/
    /*if (trigger.isBefore && trigger.isInsert) {
        ContactTriggerHandler.ContactUpdate4(trigger.new,trigger.old,trigger.newMap,trigger.oldMap); 
    }*/
   /* if (trigger.isAfter && trigger.isUpdate) {
        ContactTriggerHandler.UpdateAccount(trigger.new,trigger.old,trigger.newMap,trigger.oldMap); 
    }*/
   /* if (trigger.isAfter) {
        Set<id> setAccIds = new Set<id>();
        if (trigger.isInsert || trigger.isUpdate || trigger.isUndelete) {
            for (contact eachcon : trigger.new) {
                if (eachcon.AccountId != null) {
                    setAccIds.add(eachcon.AccountId);
                }
            }
        }
            if (trigger.isUpdate || trigger.isDelete) {
                for (contact eachc : trigger.old) {
                    if (eachc.AccountId != null) {
                        setAccIds.add(eachc.AccountId);
                    }
                }
            }
        ContactTriggerHandler.updateAccountsContactSize(setAccIds);
    }
}*/



     
     
     // addError metodu trigger.isBefore eventinde çalıştırılır..
 
     /*1. Contact'larda Lead Source field'ı 'Partner Referral' ise contact'ın update edilmesine izin verme..
         Soru: Hangi event'de?
         Soru: Kodu nasıl oluşturmalıyız?*/
     // if (trigger.isBefore && trigger.isUpdate) {
     //     for (contact con : trigger.new) {
     //         if (trigger.oldMap.get(con.id).leadSource == 'Partner Referral') {
     //             con.addError('Bu contactı değiştiremezsin..');
     //             // hata mesajını genel görürürüz..
     //         }
     //     }
     // }
 
     //2. Kullanıcının Lead Source'u update yapmasına izin verme.
     // if (trigger.isBefore && trigger.isUpdate) {
     //     for (contact cn : trigger.new) {
     //         if (cn.leadSource != trigger.oldMap.get(cn.id).leadSource) {
     //             cn.leadSource.addError('Bu recordun lead source ni değiştiremezsin..');
     //             // hata mesajını ilgili fieldin altında görürürüz..
     //         }
     //     }
     // } 
     
 
    
    
    
    
    
    
    /*if(trigger.isAfter){
        set<id> accountids = new set<id>();

        if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
            for (contact eachContact : trigger.new) {
                if(eachContact.AccountId != null){
                    accountids.add(eachContact.AccountId);
                }
            }
        }
        //updated or deleted then get the OLD ACCOUNT ID.
        if(trigger.isUpdate || trigger.isDelete){
            for (contact eachContact : trigger.old) {
                if(eachContact.AccountId != null){
                    accountids.add(eachContact.AccountId);
                }
            }
        }
        //HERE we call handler method
        contacthandler_assg.updateAccountRollUpField(accountIds);
    }*/
  
      
     
  
 
  
     /*if (trigger.isBefore && trigger.isUpdate) {
        ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.NewMap, Trigger.Old, Trigger.OldMap);
    }*/
    if (trigger.isBefore && trigger.isUpdate) {
        ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.NewMap, Trigger.Old, Trigger.OldMap);
    }


 /*   
  if(trigger.isAfter && trigger.isInsert){
    
    List<Contact> listCnt = trigger.new;

    for(Contact newCnt: listCnt){
       
      if(newCnt.Name == null){
    newCnt.addError('There is not First name,there is just Last name '+newCnt.LastName);
    }
}


  }*/
  
  
 
  
  
    /*  if(trigger.isAfter){
        System.debug('ContactTrigger tetiklendi');
    System.debug('Trigger new ==> '+trigger.new);
    System.debug('islem yapilan record sayisi == > '+trigger.new.size());
    for (contact c : trigger.new) {
        System.debug(c.LastName);
        System.debug(c.Id);
    }
}*/

    
    /* if(Trigger.isBefore){
            system.debug('BEFORE TRigger');
            if(trigger.isInsert){
                system.debug('Before INSERT Trigger');
            }
            if(trigger.isUpdate){
                system.debug('Before UPDATE Trigger');
            }
        }
        if(Trigger.isAfter){
            system.debug('AFTER Trigger');
            if(trigger.isInsert){
                system.debug('After INSERT Trigger');
            }
            if(trigger.isUpdate){
                system.debug('After UPDATE Trigger');
            }
        }*/
 }




    