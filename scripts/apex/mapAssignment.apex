 Map<string, integer> marksObtainInMaths = new Map<string, Integer>();
   marksObtainInMaths.put ( '0111CE112',40);
   marksObtainInMaths.put ( ' 0111CE102',19);
   marksObtainInMaths.put ( '0111CE100',43);
   marksObtainInMaths.put ( '0111CE098',40);
   marksObtainInMaths.put ( '0111CE0111',25);
   marksObtainInMaths.put ( '0111CE0101',30);
   marksObtainInMaths.put ( '0111CE099',32);
   System.debug(marksObtainInMaths);


   Set<string> uniqueRollNumberSet = marksObtainInMaths.keySet();
   System.debug(uniqueRollNumberSet);
   List<integer> marksObtainList = marksObtainInMaths.values();
   System.debug(marksObtainList);

  Set<String> setName = marksObtainInMaths.keySet();
 for (string rollNumber : setName) {
    integer mark = marksObtainInMaths.get(rollNumber);
    if (mark<=20) {
        System.debug  (rollNumber +' is not qualified for next class');
       }else {
        System.debug(rollNumber + 'is qualified for next class');
       }
    }



    
   


