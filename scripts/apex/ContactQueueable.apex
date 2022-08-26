List<Account> conList = [select id,name,active__c from contact where active__c = 'Yes'];
ContactQueueable aqe = new ContactQueueable(conList);
ID jobID = system.enqueueJob(aqe);
System.debug('jobID '+ jobID);