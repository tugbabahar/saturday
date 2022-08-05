public class rankPrizeSwitch(){


   public string rankhadler(integer rank) {


   string prize = ' ';
    switch on rank {
        when 1 {
            prize ='gold';
            
        }
        when 2 {
            prize ='Silver';
            
        }
        when 3 {
            prize ='Bronze';
            
        }
        when 4,5,6,7,8,9,10 {
            prize ='Top 10 certificate';
            
        }
        when else {
            prize ='Participation certificate';
            
        }
    }
    return=prize;
}
}