public class customerTriggerHandler {
  /*a. Whenever a new Customer is created, create following default Payment records
- Amount = $0.1, Mode = Online
- Amount = $1, Mode = Crypto*/  
  
  public static void createPayment(List<Customerrr__c> custTriggerNew, 
                                    List<Customerrr__c> custTriggerOld,
                                    Map<id, Customerrr__c> custTriggerNewMap,
                                    Map<id, Customerrr__c> custTriggerOldMap) {
     
    List<Payment_Name__c> listPay = new List<Payment_Name__c>(); 
   for (Customerrr__c eachCs : custTriggerNew) {
    Payment_Name__c pay = new Payment_Name__c();
     pay.Amount__c = 0.1;
     pay.mode__c = 'online';  
     pay.payments__c = eachCs.id;
    Payment_Name__c pay2 = new Payment_Name__c();      
     pay2.Amount__c = 1;
    pay2.mode__c = 'crypto';
    pay2.payments__c = eachCs.id;
    listPay.add(pay);
    listPay.add(pay2);
      }  
      if (!listPay.isEmpty()) {
        insert listPay;
      }
    }
    public static void deletePayment(List<Customerrr__c> custTriggerOld) {
      Set<id> setActives = new Set<id>();
      Set<Object> setInactives = new Set<Object>();
      for (Customerrr__c each : custTriggerOld) {
        if (each.active__c == true) {
          setActives.add(each.Id);
        }else{
          setInactives.add(each.Id);
        }
      }
      List<Payment_Name__c> listPayAc = [select id from Payment_Name__c where payments__c in : setActives];
      
      delete listPayAc;
     // List<Payment_Name__c> listPayIn = [select id from Payment_Name__c where payments__c in : setInactives and mode__c ='online'];
     //delete listPayIn;
    }
}
