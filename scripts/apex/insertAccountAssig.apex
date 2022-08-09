Account acc = new Account();
acc.name = 'Summer Fest LLC';
acc.ParentId = '0018Z00002fANYPQA4';
acc.Type = ' Technology Partner ';
acc.Rating = 'Hot';
acc.AnnualRevenue = 200000000;
insert acc;
System.debug(acc);

List<contact> listCnt =new List<Contact>();
for (Integer i = 1; i <=3; i++) {
    Contact cn = new Contact();
    cn.LastName= 'Event Planner '+i;
    cn.Phone = '+123457896';
    cn.LeadSource = 'Web';
    cn.AccountId = acc.id;
    listCnt.add(cn);
    for (contact eachcnt : listCnt) {
        System.debug(eachcnt); 
    } 
}
insert listCnt;