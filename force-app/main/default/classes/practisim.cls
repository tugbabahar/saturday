public  class practisim {
    public static decimal method1() {
        Decimal sum = 0;
        List<Opportunity> listOpp = [select id, Amount from opportunity where stageName = 'Closed Won'];
        for (opportunity eachOpp : listOpp) {
            sum += eachOpp.Amount;  
        }
        System.debug(sum);
        return sum;
      }
    }