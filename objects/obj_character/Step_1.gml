if(hp<=0){
	event_user(0);
	return;
}

if (round(vel_x) != 0)
{
	var _friction_applied = sign(vel_x) * friction_power;
	vel_x -= _friction_applied;
	if(round(vel_y) != 0) {
		vel_x *= 0.707;
	}
}
else
{
	vel_x = 0;
}

if (round(vel_y) != 0)
{
	var _friction_applied = sign(vel_y) * friction_power;
	vel_y -= _friction_applied;
	if(round(vel_x) != 0) {
		vel_y *= 0.707;
	}
}
else
{
	vel_y = 0;
}