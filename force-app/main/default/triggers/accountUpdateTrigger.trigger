trigger accountUpdateTrigger on Account (before insert, before update,after insert,after update) {
   if(trigger.isAfter && trigger.isUpdate){
    System.debug('after update trigger of account object. ');
    map<id, account> accNewMap = trigger.newMap;
    map<id, account> accOldMap = trigger.oldMap;
    for (id eachId   : accNewMap.keySet()) {
        System.debug('acc id = '+ eachId);
        Account newAcc = accNewMap.get(eachId);
        System.debug('new account name  = '+ newAcc.Name);
         
        Account oldAcc = accOldMap.get(eachId);
        System.debug('old acc name = '+ oldAcc.name);
    }
   }
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
    /* map<id, account> trgOldMap = trigger.oldMap;
    map<id, account> trgNewMap = trigger.newMap;

    system.debug('====Trigger START====');
    if(trigger.isBefore && trigger.isInsert){
        system.debug('====BEFORE INSERT====');
        system.debug('Old Map ==> ' + trgOldMap);
        system.debug('New Map ==> ' + trgNewMap);
    }
    if(trigger.isAfter && trigger.isInsert){
        system.debug('====AFTER INSERT====');
        system.debug('Old Map ==> ' + trgOldMap);
        system.debug('New Map ==> ' + trgNewMap);
    }
    if(trigger.isBefore && trigger.isUpdate){
        system.debug('====BEFORE UPDATE====');
        system.debug('Old Map ==> ' + trgOldMap);
        system.debug('New Map ==> ' + trgNewMap);
    }
    if(trigger.isAfter && trigger.isUpdate){
        system.debug('====AFTER UPDATE====');
        system.debug('Old Map ==> ' + trgOldMap);
        system.debug('New Map ==> ' + trgNewMap);
    }
    
    system.debug('====Trigger END====');
   
   
   
   
     
   
    /* system.debug('====Trigger START====');
    if (trigger.isAfter && trigger.isUpdate) {
        List<account> oldAccounts = trigger.old;
        List<account> newAccoutns = trigger.new;
        //OLD FOR EACH LOOP
       /* for(Account oldAcc: oldAccounts){
            system.debug('Old account id: ' + oldAcc.id + ', Old account name ' + oldAcc.Name);
        }
        //NEW FOR EACH LOOP

        for(Account newAcc: newAccoutns){
            system.debug('New account id: ' + newAcc.id + ', new account name ' + newAcc.Name);
        }
        
    }
    system.debug('====Trigger END====');
  
 
  
  
    /*  system.debug('====Trigger START====');
  if (trigger.isAfter) {
    if(trigger.isUpdate){
        for (account oldAcc : trigger.old) {
        System.debug('Old acc id = '+oldAcc.id + ' Old accName is = '+oldAcc.name);
    }
    for (account newAcc  : trigger.new) {
        System.debug('New acc id = '+newAcc.id + ' New accName is = '+newAcc.name);
    }
  }
  system.debug('====Trigger END====');
}
  
    /*  system.debug('====Trigger START====');
    if (trigger.isBefore && trigger.isInsert) {
        system.debug('before insert trigger trigger.old = ' + trigger.old);
    }
    if (trigger.isAfter && trigger.isInsert) {
        system.debug('after insert trigger trigger.old = ' + trigger.old);
    }
    if (trigger.isBefore && trigger.isUpdate) {
        system.debug('before update trigger trigger.old = ' + trigger.old);
    }
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('after update trigger trigger.old = ' + trigger.old);
    }
    system.debug('====Trigger END====');


    
    /*
    if (trigger.isBefore && trigger.isInsert) {
        system.debug('before insert trigger trigger.new = ' + trigger.new);
    }
    if (trigger.isAfter && trigger.isInsert) {
        system.debug('after insert trigger trigger.new = ' + trigger.new);
    }
    if (trigger.isBefore && trigger.isUpdate) {
        system.debug('before update trigger trigger.new = ' + trigger.new);
    }
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('after update trigger trigger.new = ' + trigger.new);
    }*/
  
    /*  System.debug('Account trigger tetiklendi');
    System.debug('Before trigger'+ trigger.isBefore);
 System.debug('After trigger'+ trigger.isAfter);
 System.debug('Insert trigger'+ trigger.isInsert);
 System.debug('Update trigger'+ trigger.isUpdate);
 System.debug('trigger bitti');



     
        system.debug('====Trigger START====');
        List<account> newAccounts = trigger.new; //is LIST<sObject>
        if(trigger.isAfter && trigger.isInsert){
            system.debug('after trigger trigger.new = ' + newAccounts);
            system.debug('size of trigger.new = ' + newAccounts.size());
    
            for (account eachAcc : newAccounts) {
                system.debug('account id is ' + eachacc.id + ', each account name is ' + eachAcc.name);
            }
    
        }
        system.debug('====Trigger END====');
        
        system.debug('trigger.isBefore = ' + trigger.isBefore);
        system.debug('trigger.isAfter = ' + trigger.isAfter);
        system.debug('trigger.isInsert = ' + trigger.isInsert);
        system.debug('trigger.isUpdate = ' + trigger.isUpdate);
        //INSERT
        if (trigger.isAfter && trigger.isInsert) {
            system.debug('After Insert trigger called.');
        }
        if (trigger.isBefore && trigger.isInsert) {
            system.debug('Before Insert trigger called.');
        }
    
        //UPDATE
        if (trigger.isAfter && trigger.isUpdate) {
            system.debug('After Update trigger called.');
        }
        if (trigger.isBefore && trigger.isUpdate) {
            system.debug('Before Update trigger called.');
        }
        
        
        */
        /*
        //this should print only in BEFORE.
        if(Trigger.isBefore){
            system.debug('Before INSERT trigger called');
        }
        if(Trigger.isAfter){
            //this should print only in AFTER.
            system.debug('After INSERT trigger called');
        }
    
        */
    }