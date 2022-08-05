public class SOQL_Assignment {
   public static void soql_whereClause() {
    List<contact> listCnt = [select lastName from contact where lastName like '%A%'];
    System.debug(listCnt);
    System.debug(listCnt.size());
   }
   public static void soql_formethot() {
    List<contact> lstcontact = [select LastName, Phone from contact];
    for (contact eachContact : lstcontact) {
    String cntLastName = lstcontact.LastName;
    String cntPhone = lstcontact.Phone ;
    System.debug('last name is --> '+cntLastName + ' , phone number is --> '+ cntPhone );
    }
   }
}
