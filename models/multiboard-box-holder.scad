// A simple box holder for the Multiboard system.
// Uses a [Pegboard Click](https://thangs.com/designer/Multiboard/3d-model/Pegboard%20Click%20-%20STL%20Multiboard%20Remixing%20Files-994661) for mounting.

/// START CUSTOMIZATION

// The dimensions of the object that this part holds.
inner_height = 64;
inner_depth = 117;

// The overall width of the holder.
width = 10;

// The thickness of each side of the holder.
thickness = 4;

/// END CUSTOMIZATION

PEGBOARD_CLICK_DEPTH = 5;

outer_height = inner_height+(thickness*2);
outer_depth = inner_depth+(thickness*2);

difference() {
    cube([outer_height, outer_depth, width], center = false);

    translate([thickness,thickness,0]) {
        cube([inner_height,inner_depth, width], center = false);
    }
}

translate([-PEGBOARD_CLICK_DEPTH, outer_depth/2, (width/2)-PEGBOARD_CLICK_DEPTH/2]) {
    import("../parts/multiboard-pegboard-click.stl");
}