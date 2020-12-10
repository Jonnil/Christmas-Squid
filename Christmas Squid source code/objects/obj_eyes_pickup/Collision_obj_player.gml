if (instance_exists(obj_player))
and(vspeed >= 0)
and(y >= ystart)
{
	
	#region /*Make old eyes jump off the character*/
	if (obj_player.eye_sprite > noone)
	{
		obj = instance_create_depth(x, y, 0, obj_eyes_pickup)
		with(obj)
		{
			sprite_index = instance_nearest(x, y, obj_player).eye_sprite;
		}
	}
	#endregion /*Make old eyes jump off the character END*/
	
	obj_player.eye_sprite = sprite_index;
	instance_destroy();
}