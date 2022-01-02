// Set viewport
$vpt=[0,0,0];
$vpr = [58, 0, 138];
$vpd = 70;

// working with 25 FPS and 100 steps
move = $t*5;
echo(move);

// side-length of cube
length = 10;

// move to origin
translate([length/2, length/2, length/2]){
    // blue origin position
    color([0,0,1]) rotate([0,0,0]) translate([0,0,0]) cube(length,true);
    // red translated and rotated position
    color([1,0,0,0.9]) rotate([move,move,move]) translate([-move,move,move]) cube(length,true);
    // arrow
    translate([5,-5,-8]) rotate([90,0,90]) text("<-------->", 2);
    // text annotation
    translate([5,-3.5,-10]) rotate([90,0,90]) text("10 cm", 2);
}

// to export check "Dump Images" on the animation view