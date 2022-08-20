trigger customerTrigger on Customerrr__c (before insert,after insert,before update,after update) {
    if (trigger.isAfter && trigger.isInsert) {
        customerTriggerHandler.createPayment(trigger.new,trigger.old,trigger.newMap,trigger.oldMap); 
}
}