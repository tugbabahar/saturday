trigger CaseTrigger on Case (before insert,after insert,before update,after update,before delete,after delete) {
    if (trigger.isBefore && trigger.isInsert) {  
    System.debug('Insert before');
    }
    if (trigger.isAfter && trigger.isInsert) {
        System.debug('Insert after');
    }
    if (trigger.isBefore && trigger.isUpdate) {  
        System.debug('Update before');
        }
        if (trigger.isAfter && trigger.isUpdate) {
            System.debug('Update after');
        }
        if (trigger.isBefore && trigger.isDelete) {  
            System.debug('Delete before');
            }
            if (trigger.isAfter && trigger.isDelete) {
                System.debug('Delete after');
            }
}