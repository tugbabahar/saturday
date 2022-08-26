    global class BatchApexExample implements Database.Batchable<sObject> {
        // Tüm accountlarımızı getirip isimlerini update edeceğiz..
        global Database.QueryLocator start(Database.BatchableContext BC) {
            // collect the batches of records or objects to be passed to execute
             string query = 'SELECT id, Name FROM Account';
             return Database.getQueryLocator(query);
        }
         
        global void execute(Database.BatchableContext BC, List<Account> accList) {
            
            // process each batch of records default size is 200
             for (Account acc : accList) {
                // Update the Account Name 
                acc.Name = acc.Name + ' update';
             }
            try {
                // Update the Account Record
               update accList;
             
            } catch(Exception e) {
               system.debug(e);
            }
             
        }   
         
        global void finish(Database.BatchableContext BC) {
            System.debug('islem bitti..');
            // execute any post-processing operations like sending email
            AsyncApexJob a = [Select id, Status, JobType, NumberOfErrors, JobItemsProcessed, TotalJobItems, CompletedDate, ExtendedStatus FROM AsyncApexJob where id =: BC.getJobID()];
    
            List<User> userList = new List<User>();
            userList = [select id, email, isActive From User where profile.Name = 'System Administrator' and isActive = True];
            for (user u : userList) {
                     Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                     mail.setTargetObjectId(u.Id);
                     mail.setSubject('Updating Monthly Plan Opportunity Batch - ' + a.Status);
                     mail.setSaveAsActivity(false);
                     mail.setPlainTextBody
                     ('The batch Apex job completed on  ' + a.CompletedDate + ',\n\n' +
                     'Job Status : ' + a.Status + '\n'+
                     'Total Job Items processed : ' + a.TotalJobItems + '\n'+
                     'Number of Job Items processed : ' + a.JobItemsProcessed + '\n' +
                     'Number of Failures : '+ a.NumberOfErrors);
                     Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
            }
        }
    }
