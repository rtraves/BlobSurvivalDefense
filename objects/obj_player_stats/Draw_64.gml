// You can write your code in this editor
if (instance_exists(obj_player)) {
    draw_text(obj_player_stats.x,10, "Damage: " + string(obj_player.damage));
	draw_text(obj_player_stats.x,30, "Attack Rate:"  + string(obj_player.attack_speed));
	draw_text(obj_player_stats.x,50, "Regen: "  + string(obj_player.regen));
	draw_text(obj_player_stats.x,70, "Range: " + string(obj_player.range));
	draw_text(obj_player_stats.x,90, "Reflect Dmg: " + string(obj_player.reflect_damage));
	draw_text(obj_player_stats.x,110, "Aura Dmg: " + string(obj_player.aura_damage));
}



