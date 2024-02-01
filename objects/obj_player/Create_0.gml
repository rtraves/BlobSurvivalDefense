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
armor = 0;


//aura 
aura_damage = 0;
aura_range = 200;
aura_interval = room_speed * 1;
aura_timer = aura_interval; 

all_upgrades = [
    {name: "Attack Speed", description: "+1 Basic Attack Speed"},
    {name: "Damage", description: "+5 Damage"},
	{name: "Range", description: "+50 Range"},
	{name: "+200 Health", description: "+200 HP"},
    {name: "Regen", description: "+2 regen per second"},
    {name: "Spike Damage", description: "+5 Reflect Damage"},
    {name: "Aura", description: "+2 Aura Damage per second"},
	{name: "Armor", description: "Increase armor by 5"},
];

