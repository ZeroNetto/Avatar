if((keyboard_check(vk_up) || keyboard_check(ord("W"))) && IsOnGround())
{
	physics_apply_impulse(x, y, 0, lengthdir_y(10000, -gravity_direction))
}


if (keyboard_check(vk_right) || keyboard_check(ord("D")))
{
	dir = 1;
	phy_position_x += pspeed;
	image_speed = 2;
}
if (keyboard_check(vk_left) || keyboard_check(ord("A")))
{
	dir = -1;
	phy_position_x -= pspeed;
	image_speed = 2;
}
else
{	
	image_speed = 0;
	if(!place_meeting(x, y + 1, oWall))
	{
		//image_index = 6;
	}
	else
	{
		//image_index = 0;
	}
}
if (keyboard_check(ord("Z")) && mana_points >= mana_cost)
{
	instance_create_depth(x + abs(sprite_width) * dir, y, 10, oAir);
	mana_points -= mana_cost;
	audio_play_sound(airAttack, 1, false);
}
if(phealth <= 0)
{
	audio_play_sound(lose, 1, false);
	instance_destroy(id);
	room_goto(endGame);
}
if (mana_points < mana_limit)
{	
	mana_points += mana_regen;
}

image_xscale = sign(dir);