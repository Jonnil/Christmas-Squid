image_speed = 0.3;

timer += 1;

if (timer = 60)
{
	vspeed = random_range(-0.2 , +0.2);
	timer = 0;
}

friction = 0.01;

if (image_xscale<0)
{
	hspeed = random_range(0 , -2);
}

if (image_xscale>0)
{
	hspeed = random_range(0 , +2);
}

if (place_meeting(x - 1, y, obj_wall))
or(x<camera_get_view_x(view_camera[view_current]))
{
	image_xscale =+ 1;
}

if (place_meeting(x + 1, y, obj_wall))
or(x>camera_get_view_x(view_camera[view_current])+camera_get_view_width(view_camera[view_current]))
{
	image_xscale =- 1;
}

#region /*Create bubbles when moving*/
if (fps >= 30)
and(random(10) >= 9)
and(speed > 1)
{
	instance_create_depth(x, y, +100, obj_bubble);
}
#endregion /*Create bubbles when moving END*/