// Set the shot delay in seconds
var _shot_delay = 0.5;

// Create a timer variable to keep track of time since the last shot
if (is_undefined(attack_timer)) {
    attack_timer = 0;
}
if (regen > 0) {
	if (hitpoints < max_hitpoints - regen) {
		hitpoints += regen;
	}
}

aura_timer -= 1;

if (aura_timer <= 0) {
    // Reset the timer
    aura_timer = aura_interval;

    // Check for and damage enemies within range
    with (obj_enemy) {
        var distance_to_tower = point_distance(x, y, obj_player.x, obj_player.y);
        if (distance_to_tower <= obj_player.aura_range) {
            hitpoints -= obj_player.aura_damage;
        }
    }
}

// Update the timer
attack_timer += 1 / room_speed;
if (experience >= exp_to_next_level) {
    level_up();
}

// Function to handle leveling up in the player tower
function level_up() {
    level += 1;
    experience -= exp_to_next_level;
    exp_to_next_level = level * level * 3;

    trigger_level_up_menu();
}

if (attack_timer >= attack_speed) {
    // Reset the timer
    attack_timer = 0;

    // Find the closest opponent
    var _closest_opponent = -1;
    var _closest_distance = range; // Set to a high value initially

    with(obj_enemy) {
        var _distance = point_distance(x, y, other.x, other.y);
        if (_distance < _closest_distance) {
            _closest_distance = _distance;
            _closest_opponent = id;
        }
    }

    // Check if a valid opponent is found
    if (_closest_opponent != -1) {
        // Create a bullet instance targeting the closest opponent
        var _bullet = instance_create_layer(x, y, "Instances", obj_bullet);
        var _direction = point_direction(x, y, _closest_opponent.x, _closest_opponent.y);

        // Set the bullet's direction to the angle between the tower and the opponent
        _bullet.direction = _direction;
        // Set other properties of the bullet as needed
        _bullet.speed = 10; // Example, set the speed of the bullet
        _bullet.damage = obj_player.damage; // Example, set the damage of the bullet
    }
}

function trigger_level_up_menu() {
    global.gamePaused = true;
    instance_deactivate_all(true);

    var upgrades = pick_random_upgrades();
	show_debug_message(upgrades);

    for (var i = 0; i < 3; i++) {
        if (i < array_length_1d(upgrades)) {
            var _btn = instance_create_layer(x, y + 100 + (i * 100), "Instances", obj_level_up_button);
            _btn.button_text = upgrades[i].description;
        }
    }
}


function pick_random_upgrades() {
    var picked_upgrades = [];
    var temp_upgrades = all_upgrades; 


    for (var i = 0; i < 3; i++) {
        if (array_length_1d(temp_upgrades) > 0) {
            var index = irandom(array_length_1d(temp_upgrades) - 1);
            picked_upgrades[i] = temp_upgrades[index];
        }
    }

    return picked_upgrades;
}