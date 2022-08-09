public class ContactTriggerHandler {
    public static void contactUpdateValidation1(list<Contact> conTriggerNew ,
                                                 Map<id, contact> conTriggerNewMap,
                                                 List<Contact> conTriggerOld,
                                                 Map<id, Contact> conTriggerOldMap) {
              for (contact eachContact : conTriggerNew) {
                contact oldContact = conTriggerOldMap.get(eachContact.id);
                if (oldContact.LeadSource == 'Partner Referral') {
                    eachContact.addError('Cannot update\' Partner Referral \' contacts');
              }                                       
    }
}
 public static void contactUpdateValidation2(list<Contact> conTriggerNew ,
                                                 Map<id, contact> conTriggerNewMap,
                                                List<Contact> conTriggerOld,
                                                Map<id, Contact> conTriggerOldMap) {
        for (contact eachContact : conTriggerNew) {
           if (eachContact.LeadSource != conTriggerOldMap.get(eachContact.id).LeadSource) {
            eachContact.LeadSource.addError('Cannot update LEAD SOURCE! please USER.');
           } 
        }
    }
}