public class Case_assg {
 /* public static void caseinsert() {
   List<Case> listCs = new List<Case>();
   for (Integer i = 1; i <=5; i++) {
    case c = new case();
    c.Subject= 'Testcase'+ i ;
    listCs.add(c);
   }
   System.debug('testcase inserted names ==> '+listCs);
   if (!listCs.isEmpty()) insert listCs;   
}
public static void updatecase() {
    List<Case> ls = [select Subject from case where Subject like'%Testcase%'];
    List<case> listCase = new List<case>();
    for (case each : ls) {
    each.Subject = 'Testing case ';  
    listCase.add(each);
    System.debug('testcase updated names ==> '+listCase);
    }
    update listCase; 
    
   
    
}*/
/*public static void casedelete() {
List<Case> ls2 = [select Subject from case where Subject ='Testing case '];
delete ls2;   

System.debug('testcase deleted ==> '+ls2);
}*/

public static void caseinsert()
{
case varcase = new case();
varcase.Subject = 'Testcase';
varcase.Origin='Phone';
insert varcase;
}
public static void caseupdate()
{
case varcase = [select id,Subject from case where Subject ='Testcase'] ;
varcase.Subject = 'Testing case l';
update varcase;
}
public static void casedelete()
{
case varcase = [select id,Subject from case where Subject like '%case 1%'] ;
delete varcase;
}

}
