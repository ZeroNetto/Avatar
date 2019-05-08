/// @description Insert description here
// You can write your code in this editor
var nearest_fire = instance_nearest(x, y, oFirePlace);

if(distance_to_object(oPlayer) < shootable_area &&
		fCooldown <= 0 &&
		distance_to_object(nearest_fire) < charge_area //&& nearest_fire.y <= oPlayer.y + 50 && nearest_fire.y >= oPlayer.y - 50
		){
	shoot_dir = sign(oPlayer.x - x);
	instance_create_depth(x + abs(sprite_width) * shoot_dir, y, 10, oFire);
	fCooldown = 40;
}

if (distance_to_object(nearest_fire) > charge_area &&
	nearest_fire.y <= y + 50 && nearest_fire.y >= y - 50){
	phy_position_x += eSpeed * sign(nearest_fire.x - x);
}
else{
	phy_position_x += eSpeed * sign(oPlayer.x - x);
}

fCooldown -= 1;