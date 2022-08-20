trigger SalesforceprojectTrigger on Salesforce_Project__c (before insert,after insert,before update,after update) {
    if (trigger.isAfter && trigger.isInsert) {
        Map<id, Salesforce_Project__c> spNewMap = trigger.newMap;
        Set<id> setID = spNewMap.keySet();
        SalesforceProjectHandler.updateProjectDescription(setID);
        
        //call handler method here.
        SalesforceProjectHandler.createDefaultSalesforceTicket(Trigger.New);
    }
     /* if (trigger.isBefore && trigger.isUpdate) {
        SalesforceProjectHandler.validateProjectCompletion(Trigger.New, Trigger.NewMap, Trigger.OldMap);
    }
  Map<id, Salesforce_Project__c> newsfMap = trigger.newMap;
    if (trigger.isAfter) {
        for (id varsfId : newsfMap.keySet()) {
            System.debug('project name : '+newsfMap.get(varsfId).Project_Name__c);
        }
    }*/

 
    if (trigger.isAfter && trigger.isUpdate) {
        SalesforceProjectHandler.spCompletedStatus(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}