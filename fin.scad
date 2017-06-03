
length = 20;
depth = 20;
height = 5;




module fin() {
	difference() {
		translate([20,0,0]) cube([40,20,18]);
		translate([20,-6,0]) rotate([30,0,0]) cube([50,50,50]);
	}
}

module maskingcylinder() {
	translate([0,0,-1])
	difference() {
		cylinder(h=20, r=200/2, $fn=120);
		cylinder(h=22, r=72/2, $fn=120);
	}
}

module ring() {
	rotate_extrude(convexity = 10, $fn = 100)
	translate([65/2, 1, 0])
	circle(r = 2.3, $fn = 100);
}

difference() {
	fin();
	ring();
	translate([0,0,-1]) cylinder(h=22, r=58/2, $fn=120);
	maskingcylinder();
}
