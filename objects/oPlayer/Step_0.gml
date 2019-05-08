/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_space) && place_meeting(x, y + 1, oWall))
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
if (keyboard_check(ord("Z")) && magic <= 0)
{
	instance_create_depth(x + abs(sprite_width) * dir, y, 10, oAir);
	magic = 30;
}
if(phealth <= 0)
{
	instance_destroy(id);
	room_goto(endGame);
}
magic -= 1;

image_xscale = sign(dir);