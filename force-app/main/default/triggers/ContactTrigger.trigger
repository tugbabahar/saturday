 trigger ContactTrigger on Contact (before insert, before update, after insert, after update) {
    
    
    if(trigger.isAfter){
        System.debug('ContactTrigger tetiklendi');
    System.debug('Trigger new ==> '+trigger.new);
    System.debug('islem yapilan record sayisi == > '+trigger.new.size());
    for (contact c : trigger.new) {
        System.debug(c.LastName);
        System.debug(c.Id);
    }
}


    
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




    