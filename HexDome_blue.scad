include <Round-Anything-master/polyround.scad>
include <Round-Anything-master/MinkowskiRound.scad>

$fn=10000;

difference(){
    blue_part();
    blue_part_hole();
}
    

module blue_part(){
    color("blue")
    round2d(10,100)    
    union(){
        rotate([0,0,125.572])   
            translate([0,-30,0])
                square([218.232,60]);

        rotate([0,0,-125.572])
            translate([0,-30,0])
                square([218.232,60]);

        translate([0,-30,0])
            square([122.593,60]);
    }
}

module blue_part_hole(){
    translate([94.018,0,0]){
        circle(2);
    }
    rotate([0,0,-125.572]){
        translate([189.657,0,0]){
            circle(2);
        }
    }
    rotate([0,0,125.572]){
        translate([189.657,0,0]){
            circle(2);
        }
    }
}

module blue_node(){
    offset = 371;

    translate([offset,0,0])
        blue_part();
       
    rotate([0,0,72])
        translate([offset,0,0])
            blue_part();
            
    rotate([0,0,144])
        translate([offset,0,0])
            blue_part();        
            
    rotate([0,0,-144])
        translate([offset,0,0])
            blue_part();                
            
    rotate([0,0,-72])
        translate([offset,0,0])
            blue_part();
}
