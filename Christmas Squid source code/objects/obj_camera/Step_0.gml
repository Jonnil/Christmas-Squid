#region /*Fullscreen Toggle. Default: F11*/
if (keyboard_check_pressed(vk_f11))
{
	if (window_get_fullscreen())
	{
		window_set_fullscreen(false);
	}
	else
	{
		window_set_fullscreen(true);
	}
	ini_open("Config.ini");
	ini_write_real("Config", "fullscreen_mode", window_get_fullscreen());
	ini_close();
}
#endregion /*Fullscreen Toggle. Default: F11*/

#region /*Quit Game*/
if (keyboard_check(vk_escape))
{
	game_end();
}
#endregion /*Quit Game END*/

if (!instance_exists(obj_player))
{
	instance_create_depth(x, y, 0, obj_player);
}
else
{
	x = instance_nearest(x, y, obj_player).x;
	y = instance_nearest(x, y, obj_player).y;
}