
@isTest
public  class Case_assgTestSetup {
   @TestSetup
   static void makeData(){

    case varcase = new case();
    varcase.Subject = 'Testcase';
    varcase.Origin='Phone';
    insert varcase;

}
@isTest 
private static void insertCaseTest() {
    List<Case> listc = [select id,Subject from case];
     Case_assg.caseinsert();
    System.assertEquals(1, listc.size());
}
@isTest 
private static void updateCaseTest() {
    Case_assg.caseupdate();
}
@isTest 
private static void deleteCaseTest() {
    Case_assg.casedelete();
}

}
