attack_timer = 0;
attack_speed = 1;

exp_to_next_level = 20;
experience = 0;
level = 1;
damage = 20;
max_hitpoints = 2000;
hitpoints = 2000;
reflect_damage = 0;
regen = 0;
range = 300;


//aura 
aura_damage = 0;
aura_range = 200;
aura_interval = room_speed * 2;
aura_timer = aura_interval;

// Saw blade
saw_blades_upgrade = false;
saw_blade_active = false;
saw_blades = 2;
saw_speed = 1;
saw_damage = 20;
saw_cooldown = 2;
saw_activation_duration = 5;
saw_timer = 0;
saw_blade_range = 200;


all_upgrades = [
    {name: "Attack Speed", description: "+1 Basic Attack Speed"},
    {name: "Damage", description: "+5 Damage"},
	{name: "Range", description: "+50 Range"},
	{name: "+200 Health", description: "+200 HP"},
    {name: "Regen", description: "+2 regen per second"},
    {name: "Spike Damage", description: "+5 Reflect Damage"},
    {name: "Aura", description: "+2 Aura Damage per second"},
	{name: "Saw Blades", description: "Saw Blades"},
];

