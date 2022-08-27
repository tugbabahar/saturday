public class opportunityBatch2 implements Database.Batchable<SObject>, database.stateful {
    public Integer count=0;

    public Database.QueryLocator start(Database.BatchableContext bc) {
        Database.QueryLocator q1 = database.getQueryLocator([select Id from Opportunity Where stageName = 'Closed Lost' ]);
        return q1;
    }
    public void execute(Database.BatchableContext bc, List<Opportunity> scope){
          if(!scope.isEmpty())
          delete scope; 
          count += scope.size();              
           
        }
    public void finish(Database.BatchableContext bc){
        System.debug('total number of deleted opportunuties which were '+ count);
    }
}
