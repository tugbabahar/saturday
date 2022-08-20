@isTest
public class turkishLessonTest {
   @isTest
   private static void method1Test(){
    String s ='softinnovas';
    integer uz = turkishLesson.metot1(s);
    System.assertEquals(11, uz);
   }
   @isTest 
   private static void method2Test() {
    integer a = 100000;
    integer b = turkishLesson.metot2(a);
    System.assertEquals(6, b);
   }
   @isTest
   private static void method3Test() {
     integer a = 5;
     integer b = 6 ;
     integer x = turkishLesson.sum(a,b);
     System.assertEquals(11, x);
   }
   @isTest
   private static void method4Test() {
    integer a = 10;
    integer b= 15;
 integer x = turkishLesson.carp(a,b);
    System.assertEquals(150, x);
   }
}
