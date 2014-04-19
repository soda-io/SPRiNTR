$fn=128;
h=50;
//делаю перекладины
cube ([50,5,5]); 
translate ([0,0,10])cube ([50,5,5]); 
cube ([5,70,5]);
translate ([0,0,10])cube ([5,70,5]); 
translate ([50,0,0])cube ([5,70,5]);
translate ([50,0,10])cube ([5,70,5]); 
translate ([0,70,0])cube ([55,5,5]);
translate ([0,70,10])cube ([55,5,5]);
cube ([5,5,10]);
translate ([50,0,0])cube ([5,5,10]);
translate ([50,70,0])cube ([5,5,10]);
translate ([0,70,0])cube ([5,5,10]);
//делаю стекляную панель
rotate ([0,0,90])translate ([0,-30,12.5])cube ([70,5,2]);
translate ([7.5,15,14])cube ([40,40,1]);
//делаю перекладины
translate ([0,35,10])cube ([5,5,50]); 
translate ([50,35,10])cube ([5,5,50]); 
rotate ([-45,0,0])translate ([50,-10,10])cube ([5,5,50]); 
rotate ([-45,0,0])translate ([0,-10,10]) 
cube ([5,5,50]); 
translate ([2.5,35,55])cube ([50,5,5]);
//панелька с настройками
rotate ([35,0,0])translate ([10,66,20])cube ([20,2,10]);
//перекладина с экструдером
translate ([2.5,38,25])rotate ([0,90,0])cylinder (50,2,2);
translate ([15,35,22])cube ([7,7,8]);
translate ([19,39,18])cylinder (5,1,2);
