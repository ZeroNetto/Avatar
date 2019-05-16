jump_delay -= 1;

if(keyboard_check(vk_up) || keyboard_check(ord("W"))){
	show_debug_message(jump_delay);
	if (IsOnGround()){
		physics_apply_impulse(x, y, 0, lengthdir_y(30000, -gravity_direction));
		jump_delay = 10;
	}
	else if(!was_double_jump && jump_delay <= 0){
		physics_apply_impulse(x, y, 0, lengthdir_y(15000, -gravity_direction));
		was_double_jump = true;
	}
}

if (IsOnGround()){
	was_double_jump = false;
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

if (instance_number(oEnemy) <= 0){
	room_goto_next();
}