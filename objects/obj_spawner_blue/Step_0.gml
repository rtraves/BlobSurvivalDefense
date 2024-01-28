// obj_spawner Step Event
total_time += 1;
spawn_timer -= 1;

if (spawn_timer <= 0) {
    // Select enemy type based on currentTier
    var _enemy_type = obj_blob_blue;

    // Spawn the selected enemy
    instance_create_layer(x, y, "Instances",  _enemy_type);

    // Reset the timer
    spawn_timer = spawn_interval;
}

// Adjust spawn rate after 20 seconds
if (total_time == 20 * room_speed) { // Assuming 20 seconds
    spawn_interval = 120; // Faster spawn rate, adjust as needed
}