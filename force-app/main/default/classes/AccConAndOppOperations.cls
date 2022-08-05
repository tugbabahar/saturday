
/*Create a class named as AccConAndOppOperations and Write methods for each of the following
requirements:
1. Write the logic to fetch and return all the accounts. Include account name, annual revenue, type,
and source of account.
2. Find all the opportunities which has Lead Source as 'Web' and Stage as 'Closed Lost'. Make it
dynamic so that it works for other stages and Lead sources as well.
3. Print the Annual revenue and name of all the accounts of type 'Customer - Direct' and print the
Opportunity Name and Amount for the related 'Closed Won' opportunities. Each opportunity
record should be printed in different line.
4. Write a method which should return the account record after creating it. Take Name, Annual
Revenue, Type as input parameters and populate the values in account record. If Name is not
provided, then do not create the account and show a message like Account without name
cannot be created.
PART E – Set and Set Class*/

/*public  class AccConAndOppOperations {
    public static List<Account> listAcc() {
        List<Account> allAcc = [Select Name,AnnualRevenue,Type,AccountSource from Account];
        return allAcc;
    }
    public static void listOpp(string x,string y) {
        List<Opportunity> allOpp = [select Name from Opportunity where LeadSource = : x and stageName = : y];
        System.debug(allOpp);
    }
    public static void accOpp() {
        list<Account> listAcc = [Select AnnualRevenue, Name, Type, (Select Name, Amount, Type from Opportunities WHERE StageName = 'Closed Won') From Account WHERE Type = 'Customer - Direct'];
        for (Account eachAcc : listAcc) {
            for (Opportunity eachOpp : eachAcc.Opportunities) {
                system.debug(eachOpp);
            }
        }
    }
    public static account parAcc(string Name1,integer AnnRev, string Type1) {
        Account newAcc = new Account();
        newAcc.name = Name1;
        newAcc.AnnualRevenue = AnnRev; 
        newAcc.Type = Type1;
        if (Name1 != null) {
          insert newAcc;      
        }else{
            System.debug('Account without name cannot be created');
        }
        return newAcc;
    }
}*/

