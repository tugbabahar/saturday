List<account> listAcc = new list<account>();
account a1 = new account();
a1.name = 'PI Test';
a1.Industry = 'Banking';
a1.Type = 'Customer - Direct';
listAcc.add(a1);    

account a3 = new account();
a3.name = 'PI Test';
a3.Industry = 'Banking';
a3.Type = 'Customer - Direct';
listAcc.add(a3);

account a3x = new account();
listAcc.add(a3x);
account a3y = new account();
listAcc.add(a3y);
list<database.SaveResult> results = database.insert(listAcc,false);
System.debug('***results==> '+results);
for (database.SaveResult eachResults : results) {
    if (eachResults.isSuccess()) {
        System.debug('Account inserted.id is '+ eachResults.getId());
    }else{
        System.debug('Errors '+ eachResults.getErrors());
    }
}
