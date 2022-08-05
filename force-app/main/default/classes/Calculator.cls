public class Calculator {
  public static Decimal dynamicCalculationMethod(Decimal a,Decimal b,string c){
    if (c == 'addition') {
        return a+b;
         } else if(c == 'substraction') {
            return a-b;
        }else if(c == 'division') {
            return a/b;
        }else if(c == 'multpylication') {
            return a*b;
        }else{
            System.debug('invalid value');
            return null;
        }
 }
 
}
