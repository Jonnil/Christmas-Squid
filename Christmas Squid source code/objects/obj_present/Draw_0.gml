if (opened = false)
{
	draw_sprite(spr_present_top, 0, x, y - 24);
}

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