public class ListSetMap {
    public static void practiceOne() {
   List<string> Cities = new List<string>();
   Cities.add('Ankara');
   Cities.add('Istanbul');
   Cities.add('London');
   Cities.add('Paris');
   Cities.add('New York');
   Cities.add('Tokyo');
   Cities.add('Antalya');
   Cities.add('London');
   Cities.add('Paris');
   Cities.add('New York');
   Cities.add('Tokyo');
   System.debug(Cities);
   System.debug( Cities.size());
   System.debug(Cities.isEmpty());
   System.debug(Cities.get(7));
   Set<string> newCities = new Set<string>();
    newCities.addall(Cities);
    System.debug(newCities);
    } 
    public static void practiceTwo(List<integer> tekCift) {
        Set<integer> cift = new Set<integer>();
        Set<integer> tek = new Set<integer>();
    
      for (integer a : tekCift) {
          
           if ( math.mod(a,2) == 0) {
          cift.add(a);
           
           }else if (math.mod( a,2) == 1){
             tek.add(a);
           }    
      }
        System.debug('cift sayi '+ cift);
        System.debug('tek sayi '+tek);  
    }

    
}