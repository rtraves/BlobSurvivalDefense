// Collision Event with an enemy
var _enemy = other;
hitpoints -= (_enemy.damage - armor);

if (hitpoints <= 0) {
    effect_create_above(ef_firework, x, y, 1, c_white);
    instance_destroy();
    room_goto_previous();
}

