// Mouse Left Pressed Event in obj_level_up_button
event_inherited();

switch (button_text) {
    case "+1 Basic Attack Speed":
        obj_player.attack_speed = max(0.1, obj_player.attack_speed - 0.1);
		show_debug_message(string(obj_player.attack_speed));
        break;
    case "+5 Damage":
        obj_player.damage += 5;
		show_debug_message(string(obj_player.damage));
        break;
    case "+200 HP":
        obj_player.max_hitpoints += 200;
        obj_player.hitpoints = obj_player.max_hitpoints;
        break;
	case "+5 Reflect Damage":
		obj_player.reflect_damage += 5;
		break;
	case "+2 regen per second":
		obj_player.regen += 2;
		break;
	case "+2 Aura Damage per second":
		obj_player.aura_damage += 2;
		break;
	case "+50 Range":
		obj_player.range += 50;
		break;
	case "Increase armor by 5":
		obj_player.armor += 5;
		break;
}

global.gamePaused = false;
instance_activate_all();

with (obj_level_up_button) {
    instance_destroy();
}

