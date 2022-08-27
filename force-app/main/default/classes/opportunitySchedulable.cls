public  class opportunitySchedulable implements Schedulable{
    public void execute (SchedulableContext SC){
        opportunityBatch2 ab = new opportunityBatch2();
        integer numberOfRecord =20;
        id batchId = Database.executeBatch(ab,numberOfRecord);
    }
}
