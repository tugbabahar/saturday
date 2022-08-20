public class CaseTriggerHandler {
  /*public static void CaseWithOrigin(List<case> caseTriggerNew, 
                                    List<Case> caseTriggerOld,
                                    Map<id, Case> caseTriggerNewMap,
                                    Map<id, Case> caseTriggerOldMap) {
          for (case eachCase : caseTriggerNew) {
          if (eachCase.Origin == 'Email') {
              eachCase.Status = 'Working';
              eachCase.Priority = 'Low';
          }
      }
  }
  public static void valid(List<case> caseTriggerNew, 
                            List<Case> caseTriggerOld,
                            Map<id, Case> caseTriggerNewMap,
                            Map<id, Case> caseTriggerOldMap) {
     
        for (case eachCase : caseTriggerNew) {
           if (eachCase.origin != caseTriggerOldMap.get(eachCase.id).origin){
            System.debug('Case origin is changed for [Case Number]');
           }
        }
    }*/
    public static void createChildCase(List<Case> caseTriggerNew, List<Case> caseTriggerOld, Map<Id, Case> caseTriggerNewMap, Map<Id, Case> caseTriggerOldMap) {
        List<Case> newCaseList = new List<Case>();
        List<Case> listOfCase = [Select id, Description From Case where Id in :caseTriggerNew];
        for (Case eachCase : listOfCase) {
            if(eachCase.Description.containsIgnoreCase('password')){
                newCaseList.add(eachCase);
            }
        }

        List<Case> newCases = new List<Case>();
        for (Case eachCase : newCaseList) {
            Case newCase = new Case();
            newCase.Subject = 'Parent Case may contain secret info, do something NOW!!!';
            newCase.ParentId = eachCase.Id;
            newCase.Priority = 'High';
            newCase.Description = 'Secret info not allowed in case';
            newCases.add(newCase);
        }
        insert newCases;
    }
}
  

