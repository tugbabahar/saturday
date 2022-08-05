//listenin elemanlarını nasıl yazdırırız?
//bir string elemanın listede olup olmadığını metot kullanmadan yapalım?
//aranan isim listede yoksa 'Aradığınız isim bu listede bulunmamaktadır..'
//aranan isim listede varsa '.... isim listede bulunmaktadır..'
//aranan isim birden fazla ise kaç defa olduğunu da göstersin..
List<String> isimList = new List<String>{'Ayse', 'Tunc', 'Bilge', 'Deniz', 'Ayse', 'Bora', 'Bilge', 'Ayse'};
system.debug(isimList);
string check = 'Ayse';
integer count = 0;
//string msg = 'Bu isim listemizde bulunmamaktadır';
for(string eachName : isimList){
    if(eachName == check){
        count++;
        //msg = 'Bu isim listemizde vardır..';
    }
}
//System.debug(msg);
system.debug(check + ' ismi listemizde ' + count + ' tane olarak bulunmaktadır..');

List<Decimal> list1 = new List<Decimal>();
list1.add(15.22);
list1.add(8.12);
list1.add(28.34);
list1.add(68.11);
list1.add(44.44);
System.debug('Listenin elemanlarının toplamı = ' + turkishLesson3.sum(list1));

System.debug('Listenin aritmetik ortalaması = ' + turkishLesson3.average(list1));

System.debug('Listenin en büyük sayısı => ' + turkishLesson3.highest(list1));

System.debug('Listenin en küçük sayısı => ' + turkishLesson3.lowest(list1));

turkishLesson3.highLowest(list1);