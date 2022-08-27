public with sharing class Aggregete {
    public Aggregete() {
        decimal sum = 0;
        List<AggregateResult> oppList = [Select Sum(amount)sumAmount from Opportunity WHERE StageName = 'Closed Won'];
        for (AggregateResult eachOpp : oppList) {
            sum =(Decimal)(eachOpp.get('sumAmount'));
        }
        return sum;
    }
}
