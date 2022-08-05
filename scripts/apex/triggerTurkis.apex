Account acc =new Account();
acc.name = 'Trigger account4';
insert acc;
List<contact> listCnt =new List<Contact>();
for (Integer i = 1; i <=5; i++) {
    Contact cn = new Contact();
    cn.LastName= 'Contact new '+i;
    cn.AccountId = acc.id;
    listCnt.add(cn);
}
insert listCnt;









    
 