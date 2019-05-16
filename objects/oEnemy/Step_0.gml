var nearest_fire = instance_nearest(x, y, oFirePlace);

if (nearest_fire != noone)
{
	if (distance_to_object(nearest_fire) > charge_area)
	{
		phy_position_x += eSpeed * sign(nearest_fire.x - x);
	}
	if(abs(oPlayer.x - x) <= shootable_area && abs(oPlayer.y - y) <= 70 && fCooldown <= 0 && distance_to_object(nearest_fire) <= charge_area)
	{
		instance_create_depth(x + abs(sprite_width) * sign(oPlayer.x - x), y, 10, oFire);
		audio_play_sound(fireAttack, 10, false);
		fCooldown = 40;
	}
	fCooldown -= 1;
}
else
{
	phy_position_x += eSpeed * sign(oPlayer.x - x);
}