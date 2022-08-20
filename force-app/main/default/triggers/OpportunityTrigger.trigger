trigger OpportunityTrigger on Opportunity (before insert,after insert,before update,after update) {
  
  
  
  //rint the new and old field values for (Opportunity Name and Amount) fields whenever
 /* if (trigger.isAfter && trigger.isUpdate) {
   for (opportunity eachOpp : trigger.new) {
    System.debug('new name'+eachOpp.name);
    System.debug('new amount'+eachOpp.Amount);
    System.debug(trigger.oldMap.get(eachOpp.id).name);
    System.debug(trigger.oldMap.get(eachOpp.id).Amount);
    if (eachOpp.StageName != trigger.oldMap.get(eachOpp.id).StageName) {
      System.debug('description is '+eachOpp.Description );
      System.debug('name is '+eachOpp.name);
    }
    
   }
 }
*/
  /*soru: Bir opportunitynin stage Name i update edildiğinde closed lost olarak değiştirildiğinde Description da 'çok üzgünüz' mesajını yazdırsın. closed won olarak değiştirildiğinde 'yaşasın' mesajı yazdırsın. Prospecting olarak değiştirilmek istendiğinde izin verme hata mesajı olarak 'süreci başa döndüremezsiniz..' mesajını ver. */
  /*  if (trigger.isBefore && trigger.isUpdate) {
    for (opportunity eachOpp : trigger.new) {
        if (eachOpp.StageName != trigger.oldMap.get(eachOpp.id).StageName) {
            if (eachOpp.StageName == 'Closed Lost') {
              eachOpp.Description = 'Cok uzgunuz';    
            }
            if (eachOpp.StageName == 'Closed Won') {
                eachOpp.Description = 'Yasasin';    
              }
              if (eachOpp.StageName == 'Prospecting') {
                eachOpp.StageName.addError('sureci basa donduremezsiniz');   
              }
        }
    }
}*/
/*soru : Bir opportunity nin Amount update edildiğinde bağlı olduğu accountun tüm opportunitilerinin Amount toplamları Accountta oluşturulan Total Amount fieldinde görünsün.. */

  if (trigger.isAfter) {
      set<id> accIds = new set<id>();
      if (trigger.isInsert || trigger.isUndelete) {
          for (opportunity op : trigger.new) {
              if (op.amount != null) {
                  accIds.add(op.AccountId);
              }
          }
      }
      if (trigger.isUpdate) {
          for (opportunity op : trigger.new) {
              if (op.amount != trigger.oldMap.get(op.id).amount) {
                  accIds.add(op.AccountId);
              }
              if (op.accountId != trigger.oldMap.get(op.id).accountId) {
                  accIds.add(op.accountId);
                  accIds.add(trigger.oldMap.get(op.id).accountId);
              }
          }
      }

      if (trigger.isDelete) {
          for (opportunity op : trigger.old) {
              if (op.amount != null && op.AccountId != null) {
                  accIds.add(op.accountId);
              }
          }
      }
      
      if (trigger.isUndelete) {
          for (opportunity op : trigger.new) {
              if (op.amount != null) {
                  accIds.add(op.AccountId);
              }
          }
      }

      if (!accIds.isEmpty()) {
          List<Account> accList = [select id, name, Total_Amount__c, (select id, name, amount from Opportunities) from Account where id in : accIds];
          for (Account acc : accList) {
              Decimal total = 0;
              for (opportunity op : acc.Opportunities) {
                  total += op.Amount;
              }
              acc.Total_Amount__c = total;
          }
          update accList;
      }
  }

}