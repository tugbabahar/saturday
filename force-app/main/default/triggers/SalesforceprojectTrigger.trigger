trigger SalesforceprojectTrigger on Salesforce_Project__c (before insert,after insert,before update,after update) {
/*if (trigger.isAfter) {
    System.debug('trigger new ==>'+ trigger.new);
        for (Salesforce_Project__c sfp : trigger.new) {
          System.debug(sfp.name);
    }
}*/
if (trigger.isUpdate && trigger.isAfter) {
    System.debug('trigger new after update ==>'+ trigger.new);
}
}