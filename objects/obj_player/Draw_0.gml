// Draw Event of obj_tower
draw_self();  // Draw the tower sprite

// Set the color and alpha of the range indicator
draw_set_color(c_white);  // You can change the color as needed
draw_set_alpha(0.3);    // Semi-transparent

// Draw the range circle
draw_circle(x, y, range, true);

// Reset the drawing settings
draw_set_alpha(1);
draw_set_color(c_white);




