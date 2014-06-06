//Постоянные переменные
l=200; //длина рельс
z=25;
t=10;
//Изменяемые переменные
x=00; //перемещение стола по X: -90<x<90
y=100; //перемещение стола по Y: -40<y<100
I=100; //высота положения экструдера
T=100; // длина выезда экструдера
//рельсы 

 difference(){
	cube([z,l+50,z], center=true);
	translate([0,0,t]) cube([10,l+52,6], center=true);
	translate([0,0,-t]) cube([10,l+52,6], center=true);
	translate([t,0,0]) cube([6,l+52,10], center=true);
	translate([-t,0,0]) cube([6,l+52,10], center=true);
}

translate([25,0,0]){
 difference(){
	cube([z,l+50,z], center=true);
	translate([0,0,t]) cube([10,l+52,6], center=true);
	translate([0,0,-t]) cube([10,l+52,6], center=true);
	translate([t,0,0]) cube([6,l+52,10], center=true);
	translate([-t,0,0]) cube([6,l+52,10], center=true);
}//difference
}//translate

//-------
 translate([0,y,0]){//перемещение стола по Y

  rotate([0,0,90]){
   translate([-12,-10,30]){
    difference(){
	cube([z,l,z], center=true);
	translate([0,0,t]) cube([10,l+2,6], center=true);
	translate([0,0,-t]) cube([10,l+2,6], center=true);
	translate([t,0,0]) cube([6,l+2,10], center=true);
	translate([-t,0,0]) cube([6,l+2,10], center=true);
}

translate([25,0,0]){//
 difference(){
	cube([z,l,z], center=true);
	translate([0,0,t]) cube([10,l+2,6], center=true);
	translate([0,0,-t]) cube([10,l+2,6], center=true);
	translate([t,0,0]) cube([6,l+2,10], center=true);
	translate([-t,0,0]) cube([6,l+2,10], center=true);
}//difference
}//translate
}//rotate
}//translate

 color([1,0,0]){
	translate([0,0,13]) cube([10,50,10], center=true);
	translate([25,0,13]) cube([10,50,10], center=true);
}
translate([x,0,0]){//перемещение стола по X
//полозья
 color([0,1,0]){
	translate([t+2,t-22,42]) cube([20,10,10], center=true);
	translate([t+2,t+3,42]) cube([20,10,10], center=true);
}

//стол
	color([0,0,0]) translate([t-0,0,50]) cube([160,160,5], center=true);
}//translate bed
}//translate


difference([]){
	translate([10,-174,22]) cube([200,100,70], center=true);
	translate([10,-174,27	]) cube([180,80,75], center=true);
}

//Extrude
	translate([50,-170,0]) cylinder(I,10,10);
	translate([-20,-170,0]) cylinder(I,10,10);
 rotate([90,0,180]){
	translate([20,I+10,-170]) cylinder(T,10,10);
	translate([-50,I+10,-170]) cylinder(T,10,10);
}


	color([0,0,1]) translate([15,T-170,I]) cube([70,50,40], center=true);
	
