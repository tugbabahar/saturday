public class Datetime_Assignment {
    public void diffofDate(){

        Date varTomorrowDate = date.newInstance(2022,7 , 17);
        Date varTodaysDate = date.newInstance(2022, 7, 16);
        integer daysbetween = varTomorrowDate.daysBetween(varTodaysDate);
        System.debug('The different is ='+ daysbetween);
}
    public void TimeCheck(){
        Datetime varTomorrowDatetime = Datetime.newInstance(2022,7,17,07,00,00);
        Datetime var10DaysDatetime = Datetime.newInstanceGmt(2022,7,27,09,00,00);
        Long varDatetimeLong = 1233987436L;
        Datetime add7days = varTomorrowDatetime.addDays(7);
        system.debug('I add 7 days to tomorrow ='+add7days);
        Datetime add10days = var10DaysDatetime.addDays(10);
        system.debug('I add 10 days to var10days ='+add10days);
    }
}
