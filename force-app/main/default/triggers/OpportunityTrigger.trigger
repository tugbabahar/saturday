trigger OpportunityTrigger on Opportunity (before insert,after insert,before update,after update,before delete,after undelete) {
  
  
  
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

 /* if (trigger.isAfter) {
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
  }*/
  /*
PART 1 -
Create some custom fields
a. 'Target Amount' - Field Type: Currency
b. 'Total Amount Generated' - Field Type: Currency
c. 'Highest Amount Opportunity Name' - Field Type: Text
d. 'Target Amount Achieved Opportunity Name' - Field Type: Text
on Account Object.
Create future methods which takes in the set of Account Ids and do the following tasks:
A. Update the "Highest Amount Opportunity Name" field at Account level with the
opportunity Name which have the Highest amount among the opportunities related to
the account.
B. Update the 'Target Amount Achieved Opportunity Name' at Account level with the
Closed Won Opportunity Name. Populate the opportunity name which have highest
value in Amount field, and it should be more than 'Target Amount' field value at account.
C. Update the 'Total Amount Generated' at Account with the total of Amount for all the
closed Won Opportunities related to an Account.
Please Note: Above updates should happen whenever any of the following event occurs:
i. Amount field is Updated at Opportunity level.
ii. Opportunity stageName is changed.
iii. Opportunity is reparented i.e AccountId field value is changed.
iv. A new Opportunity is created and tagged to an account.
v. An Opportunity is deleted or undeleted*/
 
  set<Id> setIds = new Set<Id>();
  if(Trigger.isAfter){
      if(Trigger.isUpdate){
      
      for (Opportunity opp : trigger.new) {
          if(opp.Amount != Trigger.oldMap.get(opp.Id).Amount || opp.StageName != Trigger.oldMap.get(opp.Id).StageName || opp.AccountId != Trigger.oldMap.get(opp.Id).AccountId){
              setIds.add(opp.AccountId);
          }
      }    
      }
      if(Trigger.isInsert){
          for (Opportunity eachOpp : trigger.new) {
              setIds.add(eachOpp.AccountId);
          }
      }
      if(Trigger.isUndelete){
          for (Opportunity eachOpp : trigger.new) {
              setIds.add(eachOpp.AccountId);
          }
      }
  }
  
 /* if(Trigger.isBefore && Trigger.isDelete){
      for (Opportunity eachOpp : trigger.old) {
          setIds.add(eachOpp.AccountId);
      }
  }
  if(!setIds.isEmpty()){
      //call it when NOT already CALLED>
      if(OpportunityTriggerHandler.futureCalled == false){
          OpportunityTriggerHandler.updateAccountWithOppAmount(setIds);
          OpportunityTriggerHandler.updateAccTotalAmountGenerated(setIds);
          OpportunityTriggerHandler.updateAccWithOppTargetAmount(setIds);
      }
  }*/

  	//in which event should we implement our requirement?
	//Insert or Update?
		//Insert.
    //Before or After?
    	//Do we need ID of opportunity? YES.
    	//To create related record.
    //AFTER INSERT it is.
    //call handler from here.
    //think in bulk 
    //	-> multiple opportunities are inserted
    //		-> create opportunity product for EACH opportunity.
    
    
    if(trigger.isAfter && trigger.isInsert){
        set<id> oppIds = trigger.newMap.keySet();
       
        //create new a opportunity product record for each opportunity.
        List<OpportunityLineItem> listOLI = new list<OpportunityLineItem>();
        product2 p2 = [select id, ProductCode  from product2 where ProductCode = 'SFDC' limit 1];
        system.debug('product 2 => ' + p2);
        for(opportunity opp: trigger.new){
            OpportunityLineItem oli = new OpportunityLineItem();
            oli.OpportunityId = opp.id;
            oli.Product2Id = p2.id; //how can we get the product id?
            oli.Quantity = 1;
            listOLI.add(oli);
            system.debug('oli => ' + oli);
        }
        if(!listOLI.isEmpty()){
            insert listOLI;
             system.debug('listOLI => ' + listOLI);
        }
        
    }
  
  }
 