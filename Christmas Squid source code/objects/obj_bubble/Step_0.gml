image_alpha = lerp(image_alpha, 0, 0.01);

if (image_alpha <= 0)
{
	instance_destroy();
}

gravity = 0.01;
gravity_direction = 90;

#region /*Destroy outside view*/
if (x < camera_get_view_x(view_camera[view_current]) - sprite_width)
or(x > camera_get_view_x(view_camera[view_current]) + camera_get_view_width(view_camera[view_current]) + sprite_width)
or(y < camera_get_view_y(view_camera[view_current]) - sprite_height)
or(y > camera_get_view_y(view_camera[view_current]) + camera_get_view_height(view_camera[view_current]) + sprite_height)
{
	instance_destroy();
}
#endregion /*Destroy outside view END*/