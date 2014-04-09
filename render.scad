use<clamp.scad>;
use<clamp_f.scad>;


module for_print() {
	clamp_male();
	translate([13,-40,1.25]) mirror([0,0,1]) clamp_female();
}

module for_presentation() {
	clamp_male();
	translate([-2.5,0,1.25]) clamp_female();
}

module for_presentation2() {
	rotate([50,-90,0]) clamp_male();
	translate([0,0,1.25]) clamp_female();
}

translate([-70,0,0]) for_presentation();
translate([-70,-50,0]) for_presentation2();
for_print();

