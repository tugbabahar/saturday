
try {
    account acc = new account();
    insert acc;
} catch (Exception ex) {
    System.debug('something went wrong');
}
System.debug('Apex is my friend');