public class String_Assignment {
    public void String_AssignmentMethods(){

        string localString = 'This is my assingment.session';
        integer lenghtOflocalString = localString.length();
        system.debug('Lenght of the var1 ='+ lenghtOflocalString);

        string uc = localString.toUpperCase();
        system.debug(uc);

        boolean containSession = localString.contains('session');
        system.debug(containSession);

        boolean containSession2 =localString.contains('SESSION');
        system.debug(containSession2);
 }

}
