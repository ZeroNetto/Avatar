woodHealth -= 0.17;
if (woodHealth <= 0)
{
	instance_destroy(self);
}