public class AccountQueueableExample implements Queueable {
 public List<Account> accList;
    public AccountQueueableExample (List<Account> accList){
        this.accList = accList;
    }
    public void execute(QueueableContext context){
        for (account Acc : accList) {
            acc.Name = acc.Name + ' -- SI';
        }
        update accList;
    }
}
