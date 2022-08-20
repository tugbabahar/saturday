trigger CaseTrigger on Case (before insert,before update,before delete,after delete) {
  //Show the message as 'Case origin is changed for [Case Number]' whenever case origin Field value is changed.

/*if (trigger.isBefore && trigger.isInsert) {
CaseTriggerHandler.CaseWithOrigin(trigger.new,trigger.old,trigger.newMap,trigger.oldMap);
}
if (trigger.isBefore && trigger.isUpdate) {
CaseTriggerHandler.valid(trigger.new,trigger.old,trigger.newMap,trigger.oldMap);
}*/
if (trigger.isAfter && trigger.isInsert){
CaseTriggerHandler.createChildCase(trigger.new,trigger.old,trigger.newMap,trigger.oldMap);
}
  
/* if (trigger.isInsert) {
    System.debug('before insert case trigger called');
 System.debug('trigger size is ===> '+trigger.size);
 }
 if (trigger.isUpdate) {
    System.debug('trigger size is '+trigger.size);
    CaseTriggerHandler.countTriggerExecution++;
    System.debug('# of times trigger executed : '+ CaseTriggerHandler.countTriggerExecution);

    CaseTriggerHandler.countRecordUpdate += trigger.size;
    System.debug('# of records updated: '+   CaseTriggerHandler.countRecordUpdate);

 }*/
  
 
 
 
 
 
 
    /*  if (trigger.isBefore && trigger.isInsert) {  
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
            }*/

          /*if(trigger.isAfter && trigger.isInsert){
          
           List<case> listCase = new List<case>();
           for (case eachCase : trigger.new) {
            Case cs = new case();
            cs.Subject = 'Tugba';
            listCase.add(cs);            
           }
          
           System.debug(cs);
           insert cs;
        }*/
       /* if (trigger.isBefore  && trigger.isUpdate) {
            Map<id, Case> mapCasetriggerOld = trigger.oldMap;
            Map<id, Case> mapCasetriggerNew = trigger.newMap;
            List<case> listCase = new List<case>();
            for (case eachCase : trigger.newMap) {
            eachCase.caseNumber = 12369;
            eachCase.CreatedDate = mapCasetriggerOld.get(listCase.id).CreatedDate;
            listCase.add(eachCase);
        }
        System.debug(listCase);
        update listCase;
    }*/
}