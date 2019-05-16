phy_fixed_rotation = true;
pspeed = 14;
depth = -10;
globalvar phealth, mana_points, mana_limit, was_double_jump, jump_delay;
phealth = 20;
mana_points = 150;
mana_limit = 60;
mana_regen = 0.7;
dir = 1;
mana_cost = 50;
was_double_jump = false;
jump_delay = 10;

randomize();
var wall = instance_nearest(irandom_range(100, 1800), irandom_range(70, 500), oWall);
phy_position_x = wall.phy_position_x + 36;
phy_position_y = wall.phy_position_y - 64;