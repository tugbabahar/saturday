public class mapAssignment {
    public static string marks() {
    string stdntRollNmber='';  
    
   Map<string, integer> marksObtainInMaths = new Map<string, Integer>();
   marksObtainInMaths.put ( '0111CE112',40);
   marksObtainInMaths.put ( ' 0111CE102',19);
   marksObtainInMaths.put ( '0111CE100',43);
   marksObtainInMaths.put ( '0111CE098',40);
   marksObtainInMaths.put ( '0111CE0111',25);
   marksObtainInMaths.put ( '0111CE0101',30);
   marksObtainInMaths.put ( '0111CE099',32);
   System.debug(marksObtainInMaths);
   System.debug(  marksObtainInMaths.keySet());
   System.debug(marksObtainInMaths.values());

}
return stdntRollNmber;
}