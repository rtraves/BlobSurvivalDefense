/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player)) {
    draw_text(10,10, "Time: " + string(game_time));
	draw_text(10,30, "Exp: "  + string(obj_player.experience));
	draw_text(10,50,"Level: " + string(obj_player.level));
} else {
    // Handle the case when obj_player doesn't exist
    draw_text(10, 10, "Respawning");
}



