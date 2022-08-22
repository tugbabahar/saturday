public class OpportunityTriggerHandler {
   /*
PART 1 -
Create some custom fields
a. 'Target Amount' - Field Type: Currency
b. 'Total Amount Generated' - Field Type: Currency
c. 'Highest Amount Opportunity Name' - Field Type: Text
d. 'Target Amount Achieved Opportunity Name' - Field Type: Text
on Account Object.
Create future methods which takes in the set of Account Ids and do the following tasks:
A. Update the "Highest Amount Opportunity Name" field at Account level with the
opportunity Name which have the Highest amount among the opportunities related to
the account.
B. Update the 'Target Amount Achieved Opportunity Name' at Account level with the
Closed Won Opportunity Name. Populate the opportunity name which have highest
value in Amount field, and it should be more than 'Target Amount' field value at account.
C. Update the 'Total Amount Generated' at Account with the total of Amount for all the
closed Won Opportunities related to an Account.
Please Note: Above updates should happen whenever any of the following event occurs:
i. Amount field is Updated at Opportunity level.
ii. Opportunity stageName is changed.
iii. Opportunity is reparented i.e AccountId field value is changed.
iv. A new Opportunity is created and tagged to an account.
v. An Opportunity is deleted or undeleted*/
    public static boolean futureCalled = false;//when it is false -> FUTURE did not execute.
    @future
    public static void updateAccountWithOppAmount(set<Id> setIds) {
        futureCalled = true;
        List<Account> listOfAcc = [Select Id, Name, Highes_Amount_Opportunity_Name__c , (Select Name, Amount from Opportunities ORDER BY Amount DESC) From Account WHERE Id in :setIds];
        for (Account eachAcc : listOfAcc) {
            eachAcc.Highes_Amount_Opportunity_Name__c  = eachAcc.Opportunities[0].Name;
            
        }
        if(!listOfAcc.isEmpty())
        update listOfAcc;
    }


    @Future
    public static void updateAccWithOppTargetAmount(set<Id> setIds) {

        futureCalled = true;
        List<Account> listOfAcc2 = [Select Id, Name, Target_Amount_Achieved_Opportunity_Name__c, Target_Amount__c, (Select Name, Amount from Opportunities WHERE stageName = 'Closed Won' ORDER BY Amount DESC) From Account WHERE Id in :setIds];
        for (Account eachAcc : listOfAcc2) {
            if(eachAcc.Opportunities[0].Amount > eachAcc.Target_Amount__c)
            eachAcc.Target_Amount_Achieved_Opportunity_Name__c = eachAcc.Opportunities[0].Name;
        }
        if(!listOfAcc2.isEmpty())
        update listOfAcc2;
    }

    @future
    public static void updateAccTotalAmountGenerated(set<Id> setIds) {
        futureCalled = true;
        decimal sum = 0;
        List<Account> listOfAcc3 = [Select Id, Name, Total_Amount_Generated__c, (Select Amount from Opportunities WHERE stageName = 'Closed Won') From Account WHERE Id in :setIds];
        for (Account eachAcc : listOfAcc3) {
            for (Opportunity eachOpp : eachAcc.Opportunities) {
                sum += eachOpp.Amount;
            }
        eachAcc.Total_Amount_Generated__c = sum;
        }
        if(!listOfAcc3.isEmpty())
        update listOfAcc3;
    }
    
}


