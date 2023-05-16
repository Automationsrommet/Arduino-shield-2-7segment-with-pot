//pinner 0 - 13 og GND på enne siden
//A5 analog inngang på den andre
pinneavstand=2.54;
pinnebredde=0.9;
pinnehoyde=11;
pad=1.1;
hullradius=0.4;
sjusegmentlengde=75-18;
sjusegmentbredde=53;
pothoyde=5;
potradius=7.5;
rund=3;
$fn=20;

deksel();
//2D();

module deksel(){
intersection(){
minkowski(){
    translate([0,+16.5/2-18/2,0])cube([62-rund*2,sjusegmentlengde+16.5+18,24-rund],center=true);
    sphere(rund);
}
union(){
linear_extrude(12)
difference(){
minkowski(){
    2D();
    circle(0.8);
}
2D();
}
difference(){
translate([0,+16.5/2-18/2,12])cube([62,sjusegmentlengde+3+16.5+18,0.25],center=true);
    

translate([0,37.5,0])cube([48,4,30],center=true);
    }
translate([0,0,6])difference(){
        cube([61.5,sjusegmentlengde+3,12.0],center=true);
        cube([60,sjusegmentlengde,13],center=true);
    
    }
}
}
}
module 2D(){
projection(){
translate([0,0,0])   
    
    translate([0,-17,-2])tall(sjusegmentbredde+5,sjusegmentlengde/2+3);
    translate([0,17,-2])tall(sjusegmentbredde+5,sjusegmentlengde/2+3);
    translate([0,37.5,0])cube([60,16.5,18],center=true);
    translate([0,-38.5,0])cube([60,18,18],center=true);
}
}
module 7seg(x,b){   
    difference(){
     translate([0,0,-2.5])color("white")cube([x,b,pothoyde+5],center=true);
   for (k=[-2*pinneavstand:pinneavstand:2*pinneavstand]){
    for (l=[-1:2:1]){  
          translate([l*((x/2)-1),k,-5])pinne();   
              }}
              translate([0,0,-0.75])tall(x,b);
              LED(x,b);             
              banerkatode(-3.5);
         translate([0,0,-6.5])color("red")cube([x*0.9,b*0.9,7],center=true);
              }              
          }              
module tall (h,l){
    for (i=[-1:1:1]){
        translate([i*h*0.35,0,2])cube([l/12,h/3,2.12],center=true);
    }
    for (j=[-1:2:1]){
        for (k=[-1:2:1]){
        translate([j*h*0.18,k*l*0.3,2])cube([l/2.5,h/12,2.12],center=true);
    }
}
}