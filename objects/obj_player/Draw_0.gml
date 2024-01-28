draw_self();

// Set the color and alpha of the range indicator
draw_set_color(c_white);  // You can change the color as needed
draw_set_alpha(0.1);    // Semi-transparent

// Draw the range circle
draw_circle(x, y, range, true);

if (aura_damage > 0) {
	draw_set_color(c_green);
	draw_circle(x,y,aura_range,false);
	draw_set_alpha(0.1);
}
// Reset the drawing settings
draw_set_alpha(1);
draw_set_color(c_white);




