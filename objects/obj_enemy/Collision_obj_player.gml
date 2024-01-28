/// @description Insert description here
// You can write your code in this editor
hitpoints -= obj_player.reflect_damage;

if hitpoints <= 0 {
	obj_player.experience += exp_gain;
	instance_destroy();
	effect_create_above(ef_explosion, x, y, 1, c_white);
}


