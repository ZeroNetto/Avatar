phy_position_x += shoot_speed;
if (instance_nearest(x, y, oEnemy) == noone)
{
	audio_play_sound(win, 10, false);
	room_goto_next();
}