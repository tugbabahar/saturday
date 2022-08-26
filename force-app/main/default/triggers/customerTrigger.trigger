trigger customerTrigger on Customerrr__c (before insert,after insert,before update,after update,before delete,after delete,before undelete,after undelete) {
    if (trigger.isAfter && trigger.isInsert) {
        customerTriggerHandler.createPayment(trigger.new,trigger.old,trigger.newMap,trigger.oldMap); 
}
if(triiger.delete && trigger.isBefore){
    customerTriggerHandler.deletePayment(trigger.old);
}
}