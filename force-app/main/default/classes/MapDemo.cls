public class MapDemo {
   public static string retrieveMonth(integer n) {
    String month='';
    Map<integer, string> monthmap = new Map<integer, string>();
    monthmap.put(1, 'January');
    monthmap.put(2, 'February');
    monthmap.put(3, 'March');
    monthmap.put(4, 'April');
    monthmap.put(5, 'May');
    monthmap.put(6, 'June');
    monthmap.put(7, 'July');
    monthmap.put(8, 'August');
    monthmap.put(9, 'September');
    monthmap.put(10, 'October');
    monthmap.put(11, 'November');
    monthmap.put(12, 'December');
    Boolean keyExist = monthmap.containsKey(n);
    if (keyExist) {
        month = monthmap.get(n);        
    } else { month = ' No such month exist. Please behave!';
        
    }
   return month;
   }
}
