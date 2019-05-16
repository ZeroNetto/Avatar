phy_fixed_rotation = true;
pspeed = 14;
depth = -10;
globalvar phealth, mana_points, mana_limit;
phealth = 20;
mana_points = 150;
mana_limit = 60;
mana_regen = 0.7;
dir = 1;
mana_cost = 50;

randomize();
phy_position_x = irandom_range(100, 1800);
phy_position_y = irandom_range(70, 500);
var wall = instance_nearest(phy_position_x, phy_position_y, oWall);
phy_position_x = wall.phy_position_x;
phy_position_y = wall.phy_position_y;