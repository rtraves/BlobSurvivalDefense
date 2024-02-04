/// @description Insert description here
// Step Event of obj_saw_blade
if (instance_exists(obj_player)) {
	
    // Update the angle for rotation
    _angle += speed;

    // Calculate the new position based on the angle
    var angle_rad = degtorad(_angle);

    x = obj_player.x + obj_player.saw_blade_range * cos(angle_rad);
    y = obj_player.y + obj_player.saw_blade_range * sin(angle_rad);

    // Rotate the sprite of the saw blade
    image_angle = _angle;
}