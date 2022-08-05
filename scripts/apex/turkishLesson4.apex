//farklı 5 şehrin son 7 gündeki sıcaklık durumlarını şehir ismi key sıcaklık değerleri decimal liste olan bir map yazın..

Map<string, List<Decimal>> cityOfHots = new Map<string, List<Decimal>>();
List<Decimal> istanbulOfHot = new List<Decimal>{21.5, 17.4, 21.3, 15.5, 8.7,22.2,23.3};
cityOfHots.put('istanbul', istanbulOfHot);

List<Decimal> nyOfHot = new List<Decimal>{8.5, 7.4, 10.3, 5.5, 8.7,2.2,3.3};
cityOfHots.put('new york', nyOfHot);

List<Decimal> torontoOfHot = new List<Decimal>{-8.5, -1.4, 5.3, 5.5, -2.7,2.2, -3.3};
cityOfHots.put('toronto', torontoOfHot);

List<Decimal> nairobiOfHot = new List<Decimal>{28.5, 31.4, 25.3, 35.5, 22.7,32.2, 33.3};
cityOfHots.put('nairobi', nairobiOfHot);

List<Decimal> londonOfHot = new List<Decimal>{2.5, 8.4, 5.3, 5.5, 2.7,3.2, 3.3};
cityOfHots.put('london', londonOfHot);

System.debug(cityOfHots);

turkishLesson4.termometre(cityOfHots); 
