// obj_spawner Step Event
total_time += 1;
spawn_timer -= 1;

if (spawn_timer <= 0) {
    var _enemy_type;

    // Check elapsed time to determine which enemy to spawn
    if (total_time < 60 * room_speed) {
        // For the first 30 seconds,
        _enemy_type = obj_blob_green;
    } else {
        // After 30 seconds, start spawning purple blobs
        _enemy_type = obj_blob_purple;
    }

    // Spawn the selected enemy
    instance_create_layer(x, y, "Instances",  _enemy_type);

    // Reset the timer
    spawn_timer = spawn_interval;
}