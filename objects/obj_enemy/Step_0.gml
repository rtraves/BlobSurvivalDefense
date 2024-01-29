
var _speed = .2;
mp_potential_step(obj_player.x, obj_player.y, _speed, true);

if hitpoints <= 0 {
	obj_player.experience += exp_gain;
	instance_destroy();
	effect_create_above(ef_explosion, x, y, 1, c_white);
}