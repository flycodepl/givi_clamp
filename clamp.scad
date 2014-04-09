//$fn=20;
use<MCAD/boxes.scad>;
use<MCAD/triangles.scad>;

module clamp_male() {
	roundedBox([29,32,3], 3, true);

	difference() {
		translate([28,0,0]) roundedBox([14,32,3], 3, true);
		translate([30.5,0,0.5]) roundedBox([3.5,25,4], 1, true);
	}
	translate([17,0,2.1]) cube([18,12,2], center=true);
	//translate([8,6,0]) rotate([90,-90,0]) triangle(13,3.1,12);
	//translate([26,-6,1.35]) rotate([90,-90,180]) a_triangle(45,1.75,12);
}

clamp_male();