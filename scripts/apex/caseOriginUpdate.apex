/*List<case> listCase = new List<case>();
for (Integer i = 0; i < 10; i++) {
    case cs = new case();
    cs.Status = 'New';
    cs.Origin = 'Email';
    listCase.add(cs);
}
insert listCase;*/

/*List<case> listCase = [select origin,createdDate from case where createdDate = TODAY];
List<case> listCase1 = new List<case>();
for (case eachCase : listCase) {
   eachCase.Origin = 'Email';
    listCase1.add(eachCase);
}
update listCase1;*/

List<account> listAcc = new List<account>();
List<account> listAcc1 = [select AnnualRevenue from account where AnnualRevenue != null];
for (account eachAcc : listAcc) {
    eachAcc.AnnualRevenue = eachAcc.AnnualRevenue-10000;
    listAcc.add(eachAcc);
}
update listAcc;