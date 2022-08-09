
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

public  class AccConAndOppOperations {
    public static Decimal AccConAndOppOperations () {
       Decimal sum = 0 ;
        list< Opportunity> closedWonOpp = [select id, Amount from Opportunity where StageName ='Closed Won' ];
        for (opportunity eachOpp : closedWonOpp) {
           sum += eachOpp.Amount ;
        } 
        System.debug('Sum of all closed won opportunities = '+ sum);    
        return sum;        
    }
    public static decimal AccConAndOppOperations2() {
        decimal sum = 0;
        list< AggregateResult> closedWonOpp2 = [select SUM(Amount)  from Opportunity where StageName ='Closed Won' ];

        for (AggregateResult eachOp : closedWonOpp2) {
            System.debug(eachOp.get('expr0')) ;
        }  
          return sum; 
    }
    public static List<Account> AccConAndOppOperations3(string x) {
       List<Account> listnew = new List<Account>();
        List<Account> listAcc = [select id,name,(SELECT amount,stageName from Opportunities where StageName = : x and  StageName != null)  from Account ];
        for (account eachAcc : listAcc) {
            if (!eachAcc.Opportunities.isEmpty()) {
                listnew.add(eachAcc);   
            }   
        }
     System.debug(listnew);
     return listnew;     
    }
    public static List<Account> AccConAndOppOperations4(string x) {
         List<Account> listAcc = [SELECT Id,Name from Account where Id IN (select AccountId from opportunity where StageName = 'Closed Won') ]; 
         System.debug(listAcc);
         return listAcc;     
     }
    public static list<Account> AccConAndOppOperations5() {
        List<Account> lisAc = [Select id,name from Account where Id IN (select accountId from contact where accountId != null)];
        System.debug(lisAc);
        return lisAc;   
    }
    public static void AccConAndOppOperations6(id x) {
        Contact con = new Contact();
        Account acc = [select id,name from account where id =: x];
        con.LastName = acc.Name;
        con.AccountId = acc.id;
        if(acc!=null) insert con;
                
    }
    public static void AccConAndOppOperations7() {
        List<Opportunity> listOpp = [select description from Opportunity ORDER BY amount  DESC limit 10];
        for (opportunity eachop : listOpp) {
        eachop.Description = 'This is one of the top 10 opportunity.Please work on this properly';
    }
    System.debug(listOpp);
    update listOpp;
}
public static List<Opportunity> AccConAndOppOperations8(id AccId, integer n) {
   list<Opportunity> newListOpp=new list<Opportunity>();
    Account acc = [select name,AnnualRevenue from account where id = :AccId];
    if(n <0 ){
    for (Integer i = 0; i < n; i++) {
        Opportunity opp = new Opportunity(); 
        opp.CloseDate = date.today().addYears(3);
        opp.StageName = 'Prospecting';
        opp.Amount = acc.AnnualRevenue/n;
        opp.Name=acc.name+i;
        opp.AccountId = acc.id;
        newListOpp.add(opp);
    }    
   insert newListOpp;
     }else{
        System.debug('Please tell us how manyopportunities needs to be created');
    }
    return newListOpp;
}
/*public static void AccConAndOppOperations9() {
    List<Account> ListAcc = [SELECT Id, Name FROM Account WHERE Id NOT IN (SELECT AccountId FROM Contact) ];
    
  List<contact> listNewcon = new List<contact>();
    for (account eachAcc : ListAcc) {
        Contact cn = new Contact();
        cn.LastName = eachAcc.Name;
        cn.AccountId = eachAcc.id;
        listNewCon.add(cn);
    }
    if(!listNewcon.isEmpty()) {insert listNewAcc;   
    } 
} benim yaptigim odev;*/
/*public static void AccConAndOppOperations8() {
    list<Opportunity> listOpp = [select Amount,stageName from Opportunity where Amount<20000 and stageName = 'Closed Lost'];
    delete listOpp;
} benim yaptigim odev */

    
    /*public static List<Account> listAcc() {
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
    }*/
}



