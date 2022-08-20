public class OperationHelper {
  /* public Decimal largestOutOfTwoNumber(Decimal a,Decimal b){
  
    if (a>b) {

    return a;
     } else {
    return b;
     }
    }
    public Decimal largestOutOfTwoNumber2 ( Decimal a,Decimal b){
    return Math.max(a, b);
    }
    public Decimal smallestOutOfThreeNumbers (Decimal a,Decimal b,Decimal c){
        return Math.min(a,Math.min(b,c));
    }
    public Decimal smallestOutOfThreeNumbers2 (Decimal a,Decimal b,Decimal c){
        if (a<b && a<c) {
            return a;
            
        } else if(b<a && b<c) {
            return b;
            
        }else{
            return c;
        }
     }
     public integer sumOfPositiveIntegers(integer n){
        integer sum = 0;
        if (n<0) {
        System.debug('We are not calculating the sum of the integer.');
        } else {
        
        for (Integer i = 0; i <= n; i++) {
         sum += i;
          }
       }
      return sum;
      }
     public static Decimal ListofDecimal( List<decimal> Listofa){
     decimal sum= 0;
    for (decimal  items: Listofa) {
        sum= sum+items;
        
        System.debug(items);
        }
     return sum;
    }*/
    public decimal largestOutOfTwoNumbers(Decimal d1, Decimal d2) {
        decimal returnMax;
        if(d1 >= d2){
            returnMax = d1;
        } else {
            returnMax = d2;
        }
        return returnMax;
    }

    public decimal smallestOutOfThreeNumbers(Decimal d1, Decimal d2, Decimal d3){
        //FIRST WAY
        Decimal d1d2Min = math.min(d1, d2);
        Decimal d1d2d3Min = math.min(d1d2Min, d3);
        return d1d2d3Min;
    }

    public integer sumOfPositiveInteger(integer n){
        integer sum;
        if(n < 0){
            system.debug('We are NOT calculating the sum of negative number. So, be positive, pass positive number.');
        } else {
            sum = 0;
            for (Integer i = 0; i <= n; i++) {
                sum += i;
            }
        }
        
        return sum;
    }
  
 
}
