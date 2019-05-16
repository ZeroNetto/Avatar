instance_destroy(self);
fire = instance_nearest(self.x, self.y, oFirePlace);
if (fire.fire_power == 1)
{
	instance_destroy(other);
}
else
{
	fire.fire_power -= 1;
	audio_play_sound(fire_air, 10, false);
}