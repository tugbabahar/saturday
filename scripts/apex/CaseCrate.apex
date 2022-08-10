list<case> newCases = new list<case>();
for(integer i=0 ; i< 205; i++){
    case c = new case();
    c.Subject = 'There is a bug';
    c.Description = 'Resolve it';
    c.Status = 'New';
    c.Origin = 'Web';
    newCases.add(c);
}
insert newCases;
list<case> listCase = [Select id, subject from case];
 for (case each : listCase) {
    each.subject += '2';
 }
 update listCase;