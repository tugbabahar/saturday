turkishLesson t1 = new turkishLesson();
integer a = t1.method1('Bugun hava gunesli.');
system.debug('textin krakter uzunlugu ='+a);  //ayni
system.debug(t1.method1('Bugun hava gunesli.'));  //ayni

Integer rmsys = t1.method2(256);
System.debug('Bu sayinin rakam sayisi = '+rmsys);

turkishLesson t2 = new turkishLesson();
integer add = t2.sum(3, 5);
integer mul = t2.mult(8, 9);
Integer gt = add+mul;
system.debug('iki sonucun toplami = '+gt);