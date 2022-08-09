public class contacthandler_assg {
  public static void createcontact (List<account> accTriggerNew, 
                                     List<account> accTriggerOld,
                                     Map<id, account> accTriggerNewMap,
                                     Map<id, account> accTriggerOldMap) {
List<contact> listCon = new List<contact>();
for (Account eachAcc : accTriggerNew) {
     contact cn = new contact();
     cn.LastName = 'Tugba ' +eachAcc.name;
     cn.AccountId = eachAcc.id;   
     listCon.add(cn);                                    
      }
      insert listCon;
}
}