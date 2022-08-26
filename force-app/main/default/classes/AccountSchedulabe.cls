public  class AccountSchedulabe implements Schedulable{
    public void execute (SchedulableContext SC){
        AccountsBatch ab = new AccountsBatch();
        integer numberOfRecord =20;
        id batchId = Database.executeBatch(ab,numberOfRecord);
    }
}
