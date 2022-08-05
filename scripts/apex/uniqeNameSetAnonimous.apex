//In anonymous apex file, Create a set of strings named as uniqueNameSet with “Tom” and “Jerry”
//as the default values in it.
//2. Print the size of the above created Set.
//3. Add new elements in the uniqueNameSet.
//4. Check if uniqueNameSet contains your name?
//5. Check if the uniqueNameSet is Empty.
//6. Clear the set and print it.
//7. Now check if the set is empty or not. 
//8. Is it possible to get an element from a set with the help of an index? If Yes, then please write the
//code for the same and If No, then why is it not possible
//9. List down at the differences between set and list.


Set<String> uniqeNameSet = new Set<String>{'tom','jerry'};

System.debug(uniqeNameSet);
System.debug(uniqeNameSet.size());
uniqeNameSet.add('Tugba');
uniqeNameSet.add('Ertugrul');
uniqeNameSet.add('Hafsa');
uniqeNameSet.add('Alparsan');
System.debug(uniqeNameSet);
Boolean myName = uniqeNameSet.contains('Tugba');
System.debug(myName);
Boolean Empt = uniqeNameSet.isEmpty();
System.debug(Empt);

uniqeNameSet.clear();
System.debug(uniqeNameSet);
Boolean Empt2 = uniqeNameSet.isEmpty();
System.debug(Empt2);

