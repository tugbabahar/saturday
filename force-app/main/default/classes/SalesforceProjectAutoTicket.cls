public class SalesforceProjectAutoTicket {

        public static void createDefaultSalesforceTicket(List<salesforce_project__c> spTriggerNew) {
           try{ //create one empty list of ticket
            List<Salesforce_Ticket__c> newSTList = new List<Salesforce_Ticket__c>();
            for (salesforce_project__c eachSP : spTriggerNew) {
                Salesforce_Ticket__c st = new Salesforce_Ticket__c();
                st.Subject__c = 'Default ST';
                st.Salesforce_Project__c = eachSP.id;
                newSTList.add(st);
            }
            if(!newSTList.isEmpty()){
                insert newSTList;
            }
        }catch(exception ex){
                System.debug('there is error .fix it man');
                for (Salesforce_Project__c eachsp : spTriggerNew) {
                    eachsp.addError('salesforce ticket creation failed.');
                }
            }
        }
     }
   

