public class ContactQueueable implements Queueable  {
    public List<Contact> conList;
    public ContactQueueable(List<contact> conList) {
        this.conList = conList;
    }
    public void execute(QueueableContext context){
        for (Contact con : conList) {
            con.Name = con.Name + ' -- SI';
        }
        update conList;
    }
}
