//if you define a parameterized consturctor, 
//then the default non-parameterized constructor DOESN'T work.
cat dummyCat = new cat();
dummyCat.color = 'black';
dummyCat.name = 'purr';
dummyCat.sleeping();
system.debug(dummyCat);

cat falconsCat = new cat('fluffykins', 'white');
system.debug(falconsCat);