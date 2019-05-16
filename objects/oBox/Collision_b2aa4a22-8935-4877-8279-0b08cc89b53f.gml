box_health -= 1;
if (box_health <= 0)
{
	instance_destroy(self);
}