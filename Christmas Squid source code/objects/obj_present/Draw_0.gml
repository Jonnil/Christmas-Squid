if (opened = false)
{
	draw_sprite(spr_present_top, 0, x, y - 24);
	if (place_meeting(x, y+1, obj_wall))
	and(random(100) >= 99)
	and(y<camera_get_view_y(view_camera[view_current])+camera_get_view_height(view_camera[view_current]))
	{
		vspeed =- 3;
	}
}

if (!place_meeting(x, y+1, obj_wall))
and(y<camera_get_view_y(view_camera[view_current])+camera_get_view_height(view_camera[view_current]))
{
	gravity = 0.5;
}
else
{
	gravity = 0;
}
gravity_direction = 270;
hspeed = 0;
x = xstart;

draw_self();

#region /*Hat*/
if (place_meeting(x, y, obj_player))
and(opened = false)
and(hat_sprite_inside_present > noone)
{
	opened = true;
	obj = instance_create_depth(x, y - 48, 0, obj_hat_pickup);
	with(obj)
	{
		sprite_index = instance_nearest(x, y, obj_present).hat_sprite_inside_present;
	}
}
#endregion /*Hat END*/

#region /*Eyes*/
if (place_meeting(x, y, obj_player))
and(opened = false)
and(eyes_sprite_inside_present > noone)
{
	opened = true;
	obj = instance_create_depth(x, y - 48, 0, obj_eyes_pickup);
	with(obj)
	{
		sprite_index = instance_nearest(x, y, obj_present).eyes_sprite_inside_present;
	}
}
#endregion /*Eyes END*/