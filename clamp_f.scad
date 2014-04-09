use<MCAD/boxes.scad>;
use<MCAD/triangles.scad>;

use<clamp.scad>;

//$fn=20;
module clamp_female() {
	difference() {
		color("green", 0.5) translate([-2.5,0,0])
			roundedBox([50,32,5.5], 3, true);
		socket_2();
		color("blue", 0.5) translate([0.5,0,-2])
			cube([34,36,5], center=true);
		translate([2,0,0]) socket();
		translate([-21,0,0]) roundedBox([3.5,25,29], 1, false);
	}
	
}

module socket_2() {
	difference() {
		color("red", 0.5) translate([10,0,2]) cube([26,16,5], center=true);
		translate([0,-5,2]) rotate([0,0,45])
			cube([10,10,10], center=true);
	}
}

module socket() {
	hull() {
		rotate([0,0,-40])
			roundedBox([36,6,29], 2, false);
		translate([-3,0,0]) rotate([0,0,-40])
			roundedBox([36,6,29], 2, false);
	}
}