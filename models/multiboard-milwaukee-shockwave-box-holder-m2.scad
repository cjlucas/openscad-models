mirror([1,0,0]) half();

half();

module half() {
  // backplate
  difference() {
  cube([62.75+14, 6, 15]);
  
    rotate([90, 0, 0])
    translate([50, 15/2, -50])
      cylinder(h = 100, d = 7, $fn=100);
  }

  
  // arm
    translate([62.75, 0, 2])
    rotate([270, 0, 0])
linear_extrude(height = 50)
polygon([[2, 0], [0, 2], [12, 2], [14, 0]]);

  // triangular arm support
    rotate([90, 0, 90])
  translate([6, 2, 62.75+14-12])
  linear_extrude(height = 12)
  polygon([[0, 0], [0, 4], [4, 0]]);
  
    // arm hump
  rotate([90, 0, 90])
  translate([50-6, 2, 62.75+14-12])
  linear_extrude(height = 12)
    polygon(points=[[2, 0], [2, 2], [4, 2], [6, 0]]);
  
}


