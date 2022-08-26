AccountSchedulabe accSchedule = new AccountSchedulabe();
 string cron = '0 0 10 * * ?';
 string jobId = system.schedule('Acc Batch everyday', cron, accSchedule);