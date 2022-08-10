 trigger ContactTrigger on Contact (before insert, before update, after insert, after update, after undelete) {
    if(trigger.isAfter){
        set<id> accountIds = new set<id>();

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
    }
  
      
     
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
    /*  if (trigger.isBefore && trigger.isUpdate) {
        ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.NewMap, Trigger.Old, Trigger.OldMap);
    }
   if (trigger.isBefore && trigger.isUpdate) {
        ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.NewMap, Trigger.Old, Trigger.OldMap);
    }*/
















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




    