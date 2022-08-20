@isTest
public  class OperationHelperTest {
  @isTest
  private static void largestOutOfTwoNumbersTest() {
    OperationHelper test1 = new OperationHelper();
    decimal a= test1.largestOutOfTwoNumbers(9.35, 5.85);
    system.assertEquals(9.35, a);
    decimal b= test1.largestOutOfTwoNumbers(2.36, 3.85);
    system.assertEquals(3.36, b);
  }
  @isTest
  private static void smallestOutOfThreeNumbersTest() {
    OperationHelper test1 = new OperationHelper();
    decimal a= test1.smallestOutOfThreeNumbers(3.25, 4.48,6.35);
    system.assertEquals(3.25, a);
  
  }
  @isTest
  private static void sumOfPositiveIntegerTest() {
    OperationHelper test1 = new OperationHelper();
    integer a= test1.sumOfPositiveInteger(45);
    system.assertEquals(((45*46)/2), a);
    integer b= test1.sumOfPositiveInteger(-3);
    system.assertEquals(null, b);

}
}
