public class caseBatch implements Database.Batchable<SObject>, database.stateful {
    public Integer count=0;

    public Database.QueryLocator start(Database.BatchableContext bc) {
        Database.QueryLocator q1 = database.getQueryLocator([select Id,OwnerId,status,Origin from case Where status != 'Closed'  and LastModifiedDate < LAST_N_DAYS:5]);
        return q1;
    }
    public void execute(Database.BatchableContext bc, List<case> scope){
        List<Task> tasksList = new list<Task>();
        for(case cs : scope){
            Task tk = new Task();
            tk.Subject = System.label.Case_Subject;
            tk.Description =System.label.Case_Comments;
            tk.WhatId = cs.Id;
            tk.OwnerId = cs.OwnerId;
            tk.Status = 'In Progress';
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