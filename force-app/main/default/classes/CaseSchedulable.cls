public  class CaseSchedulable implements Schedulable{
    public void execute (SchedulableContext SC){
        caseBatch ab = new caseBatch();
        integer numberOfRecord =20;
        id batchId = Database.executeBatch(ab,numberOfRecord);
    }
}
