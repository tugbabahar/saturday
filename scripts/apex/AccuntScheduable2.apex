AccountScheduable2 as = new AccountScheduable2();
string cronExp = '0 0 11 * * ?';
id jobId = system.schedule('Acc Batch everyday', cronExp, as);