// Draw Event of obj_level_up_button

// Draw the background
var _padding = 10;  // Adjust the padding around the text as needed
var _bg_width = string_width(button_text) + _padding * 2;
var _bg_height = string_height(button_text) + _padding * 2;
draw_set_color(c_black); // Set the background color. You can change this as needed.
draw_rectangle(x - _bg_width / 2, y - _bg_height / 2, x + _bg_width / 2, y + _bg_height / 2, false);

// Draw the button itself
draw_self();

// Draw the text
draw_set_font(fnt_menu);
draw_set_color(c_white); // Set the text color. You can change this as needed.
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, button_text);

// Reset alignment to default
draw_set_halign(fa_left);
draw_set_valign(fa_top);


