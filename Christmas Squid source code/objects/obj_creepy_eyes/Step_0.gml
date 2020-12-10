if (instance_exists(obj_player))
and(distance_to_object(obj_player)<128)
and(image_index=0)
{
	image_index = 1;
	image_speed =+ 1;
}

if (instance_exists(obj_player))
and(distance_to_object(obj_player)>300)
and(image_index=image_number-1)
{
	image_speed=-1;
}

if (image_index>image_number-1)
{
	image_speed=0
	image_index=image_number-1;
}

if (image_index<=0)
{
	image_speed=0
	image_index=0;
}