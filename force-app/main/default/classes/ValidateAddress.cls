public class ValidateAddress {
    public void validateHomeAddress(){

        string houseName ='Bahar';
        string streetName ='Altamonte Spring';
        string cityName = 'Orlando';
        string stateName = ' Florida';
        string stateISOCode = 'FL';
        string countryName = 'Uited States';
        string countryISOCode = 'US';


        integer lenghtOfStreet = streetName.length();
        boolean houseNameCheck =streetName.contains(houseName);
        boolean ISOCodeCheck = streetName.contains(stateISOCode);
        string x = stateISOCode.toUpperCase();
        string y = countryISOCode.toUpperCase();
        String z = countryISOCode.toUpperCase();
        string a = cityName.toLowerCase();
        string b = stateName.toLowerCase();
        string fullAddress = (houseName +''+ streetName + ''+ cityName+ ''+ stateName+ ''+countryName);

        system.debug('Lenght of street name '+ lenghtOfStreet);
        system.debug('Street name contains house name '+ houseNameCheck);
        system.debug('Street name contains ISO Code? '+ ISOCodeCheck);
        system.debug('toUpperCase= '+ (x+','+y+','+z));
        system.debug('toLowerCase= '+(a+','+b));
        system.debug('My address is:'+fullAddress);

    }
}
