List<string> listColor =new List<string>();
listColor.add('red');
listColor.add('white');
listColor.add('black');
listColor.add('purple');
listColor.add('orange');
System.debug(listcolor);
System.debug(listColor.size());
System.debug (listColor.contains('red'));
System.debug (listColor.get(listColor.size()-1).toUpperCase());
List<string> colorCodesList =new List<string>{'#ff0000','# ffffff','# 000000','#800080','#FF7F00'};
Boolean check = listColor.equals(colorCodesList);
System.debug(check);

List<string> mergeList =new List<string>();
    mergeList.addAll(listColor);  
    mergeList.addAll(colorCodesList); 
     System.debug(mergeList);
