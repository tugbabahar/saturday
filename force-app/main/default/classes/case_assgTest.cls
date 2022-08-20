@istest
public class case_assgTest {
 @istest
    private static void caseInsertTest() {
        Case_assg.caseinsert();
        case varcase = new case();
        varcase.Subject = 'Testcase';
        varcase.Origin='Phone';
        insert varcase;
    }
    @isTest
    private static void caseUpdateTest() {
        Case_assg.caseupdate(); 
        list<case> varcase = [select id,Subject from case] ;
        System.assertEquals('Testing case l', varcase[0].Subject);
       
        
    }
    @isTest 
    private static void casedeleteTest() {
        Case_assg.casedelete() ;
    }
}
