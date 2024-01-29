// obj_enemy Step Event
event_inherited()

// Move towards the tower using potential step
var _speed = .2; // Adjust the speed as needed
mp_potential_step(obj_player.x, obj_player.y, _speed, true);

