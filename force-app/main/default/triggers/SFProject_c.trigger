trigger SFProject_c on Salesforce_Project__c (before insert,after insert,before update,after update) {
    if (trigger.isAfter && trigger.isInsert) {
        SalesforceProjectAutoTicket.createDefaultSalesforceTicket(Trigger.New);
    }














    /*
    system.debug('====Trigger START====');
if(trigger.isInsert && trigger.isAfter){
 Map<id,Salesforce_Project__c > sfMap = trigger.newMap;
 
 set<id> IdSet = sfMap.keySet();
 for (id eachId : IdSet) {
    Salesforce_Project__c  newPrj = sfMap.get(eachId);
    System.debug(newPrj);
 }
 } 
    system.debug('====Trigger END====');*/
}