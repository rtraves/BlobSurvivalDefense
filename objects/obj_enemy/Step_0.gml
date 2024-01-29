
var _speed = .2;
mp_potential_step(obj_player.x, obj_player.y, _speed, true);

if hitpoints <= 0 {
	show_debug_message("Enemy destroyed. HP: " + string(hitpoints));
	obj_player.experience += exp_gain;
	effect_create_above(ef_explosion, x, y, 1, c_white);
	instance_destroy();
}
