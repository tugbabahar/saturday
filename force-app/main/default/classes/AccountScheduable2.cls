global class AccountScheduable2 implements Schedulable{
    global void execute(SchedulableContext sc){
         BatchApexExample bax = new BatchApexExample();
         integer numberOfRecords = 10;
         ID batchId = Database.executeBatch(bax, numberOfRecords);
         //System.debug(batchId);
    }
 }
