@isTest
public  class RankHandlerTest {
  @isTest  
  private static void RankPrizeTest() {

    RankHandler test1 = new RankHandler();
   string a =test1.rankPrize(1); 
   system.assertEquals('Gold', a);

   string b =test1.rankPrize(2); 
   system.assertEquals('Silver', b);

   string c =test1.rankPrize(3); 
   system.assertEquals('Bronze', c);

   string d =test1.rankPrize(8); 
   system.assertEquals('Top 10', d);

   string e =test1.rankPrize(11); 
   system.assertEquals('Participation certificate', e);
  }
  @isTest  
  private static void rankPrizeSwitch() {

    RankHandler test1 = new RankHandler();
   string a =test1.rankPrizeSwitch(1); 
   system.assertEquals('Gold', a);

   string b =test1.rankPrizeSwitch(2); 
   system.assertEquals('Silver', b);

   string c =test1.rankPrizeSwitch(3); 
   system.assertEquals('Bronze', c);

   string d =test1.rankPrizeSwitch(8); 
   system.assertEquals('Top 10', d);

   string e =test1.rankPrizeSwitch(11); 
   system.assertEquals('thank you for participating', e);
  }
  
}
