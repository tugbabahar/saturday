Map<string,Country_Code__c> mcs = Country_Code__c.getAll();
system.debug('country codes are ==> '+mcs);
set<string> countries = mcs.keyset();
for(string eachCountry : countries){
    Country_Code__c cs = mcs.get(eachCountry);
    string countryCode = cs.Country_Code__c;
   system.debug( 'country is '+ eachCountry + ' , its code is '+ countryCode);
}
system.debug('map of country code custom setting ==> '+mcs);


/*{"United States":{"LastModifiedDate":"2022-08-26T01:07:05.000Z","IsDeleted":false,"CreatedById":"0058Z000008DILJQA4","CreatedDate":"2022-08-26T01:07:05.000Z","Country_Code__c":"USA","Id":"a048Z00000mKPS4QAO","LastModifiedById":"0058Z000008DILJQA4","SetupOwnerId":"00D8Z000001r5EVUAY","Name":"United States","SystemModstamp":"2022-08-26T01:07:05.000Z"}

"Canada":{"LastModifiedDate":"2022-08-26T01:06:48.000Z","IsDeleted":false,"CreatedById":"0058Z000008DILJQA4","CreatedDate":"2022-08-26T01:06:48.000Z","Country_Code__c":"Can","Id":"a048Z00000mKPRuQAO","LastModifiedById":"0058Z000008DILJQA4","SetupOwnerId":"00D8Z000001r5EVUAY","Name":"Canada","SystemModstamp":"2022-08-26T01:06:48.000Z"}

"India":{"LastModifiedDate":"2022-08-26T01:07:14.000Z","IsDeleted":false,"CreatedById":"0058Z000008DILJQA4","CreatedDate":"2022-08-26T01:07:14.000Z","Country_Code__c":"IND","Id":"a048Z00000mKPSEQA4","LastModifiedById":"0058Z000008DILJQA4","SetupOwnerId":"00D8Z000001r5EVUAY","Name":"India","SystemModstamp":"2022-08-26T01:07:14.000Z"}

"Turkiye":{"LastModifiedDate":"2022-08-26T01:07:26.000Z","IsDeleted":false,"CreatedById":"0058Z000008DILJQA4","CreatedDate":"2022-08-26T01:07:26.000Z","Country_Code__c":"TUR","Id":"a048Z00000mKPSJQA4","LastModifiedById":"0058Z000008DILJQA4","SetupOwnerId":"00D8Z000001r5EVUAY","Name":"Turkiye","SystemModstamp":"2022-08-26T01:07:26.000Z"}}|0x2b41dca8*/




