public class opportunityBatch implements Database.Batchable<SObject>, database.stateful {
    public Integer count=0;

    public Database.QueryLocator start(Database.BatchableContext bc) {
        Database.QueryLocator q1 = database.getQueryLocator([select Id, OwnerId, CloseDate from Opportunity Where (stageName != 'Closed Won' or stageName != 'Closed Lost') and LastModifiedDate < LAST_N_DAYS:7]);
        return q1;
    }
    public void execute(Database.BatchableContext bc, List<Opportunity> scope){
        List<Task> tasksList = new list<Task>();
        for(Opportunity opp : scope){
            Task tk = new Task();
            tk.Subject = 'Other';
            tk.Description = 'Reminder - Please take action on the Opportunity';
            tk.WhatId = opp.Id;
            tk.OwnerId = opp.OwnerId;
            tk.Status = 'In Progress';
            if(opp.CloseDate < Date.today()){
                tk.ActivityDate = Date.today();
            } else {
                tk.ActivityDate = opp.CloseDate.addDays(-2);
            }
            tasksList.add(tk);             
            count++;
        }
        if(!tasksList.isEmpty()){
            Insert tasksList;
        }
    }
    public void finish(Database.BatchableContext bc){
        system.debug('Total Number of tasks created:   '+count);
    }
}
    

