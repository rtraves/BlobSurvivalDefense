/// @description collision

hitpoints -= obj_player.damage;
instance_destroy(other);
if hitpoints <= 0 {
	obj_player.experience += exp_gain;
	instance_destroy();
	effect_create_above(ef_explosion, x, y, 1, c_white);
}

direction = point_direction(x, y, obj_player.x, obj_player.y);


