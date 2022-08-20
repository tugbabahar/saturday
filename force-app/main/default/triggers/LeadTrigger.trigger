trigger LeadTrigger on Lead (before insert,after insert,before update,after update) {
    //Whenever Lead is created with LeadSource as Web then show "Rating should be Cold" message otherwise show "Rating should be hot"
if (trigger.isBefore && trigger.isInsert) {
    for (lead eachLead : trigger.new) {
       if( eachLead.LeadSource == 'Web'){
       System.debug('Rating should be Cold');
       } else {
       System.debug('Rating should be Hot');
       }
    }
    }
}
