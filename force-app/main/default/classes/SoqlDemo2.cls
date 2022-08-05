public with sharing class SoqlDemo2 {
   
    public static void childToParent_Soql1() {
        List<contact> listCnt = [Select id,name,Account.Name FROM Contact WHERE Account.Industry = 'Energy'];
        for (contact eachContact : listCnt) {
            String accName = eachContact.Account.Name;
            System.debug('contact name is '+eachContact.Name + ' ,its acc is '+accName);
            
        }   
    }
    public static void sampleSoql4() {
        List<account> accountwithOppList = new List<account>();
         accountwithOppList =[select Name,AnnualRevenue,(Select Name,Amount FROM opportunities WHERE stageName = 'Closed Won') from Account where type = 'Customer - Direct'];
        for (account acc : accountwithOppList) {
            System.debug('Account name '+acc.name + ' and its annual revenue is --> '+ acc.AnnualRevenue);
            List<opportunity> listOpp = acc.opportunities;
            for (opportunity opp : listOpp) {
               System.debug('Opportunity name --> '+opp.Name);
               System.debug('Opportunity amount --> '+ opp.Account); 
            }
        }
       }
       
}
