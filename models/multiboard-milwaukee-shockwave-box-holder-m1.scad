//mirror([1,0,0]) half();

half();

module half() {

difference() {
  // backplate
  cube([50, 6, 15]);
  
    rotate([90, 0, 0])
  translate([10, 8, -10])
import("/home/chris/downloads/Small Thread Hole - Vertical, Negative.stl");
  }
  

  
  // arm
  translate([50-20, 0, 0])
  cube([20, 40, 3]);
  
  // triangular arm support
    rotate([90, 0, 90])
  translate([6, 3, 50-20])
  linear_extrude(height = 20)
  polygon([[0, 0], [0, 4], [4, 0]]);
  
  // arm hump
  rotate([90, 0, 90])
  translate([40-10, 3, 50-20])
  linear_extrude(height = 20)
    polygon(points=[[2, 0], [2, 2], [8, 2], [10, 0]]);
}

