@isTest
public  class calculator2Test {
   @isTest
   private static void testMethod1() {
    string returnMsg = calculator2.printAndReturnMessage('this is form test');
    system.assertEquals('this is form test...OK Cool', returnMsg);
   }
   @isTest
   private static void testMethodAdd1() {
    integer sum1 = Calculator2.add(15, 150);
    System.assertEquals(165, sum1);
   }
   @isTest
    private static void testMethod3(){
    integer sum2 = Calculator2.add(15, 40, 25);
    system.assertEquals(80, sum2);
   }
}
