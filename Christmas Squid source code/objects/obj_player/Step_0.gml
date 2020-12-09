#region /*Keyboard Keys*/
key_down = (keyboard_check(vk_down))
or(keyboard_check(ord("S")))

key_left = (keyboard_check(vk_left))
or(keyboard_check(ord("A")))

key_right = (keyboard_check(vk_right))
or(keyboard_check(ord("D")))

key_up = (keyboard_check(vk_up))
or(keyboard_check(ord("W")))
#endregion /*Keyboard Keys END*/

#region /*Movement*/
if (key_down)
and(!key_up)
and(!place_meeting(x, y+1, obj_wall))
{
	vspeed += 0.4;
}

if (key_left)
and(!key_right)
and(!place_meeting(x-1, y, obj_wall))
{
	hspeed -= 0.4;
	image_xscale = -1
}

if (key_right)
and(!key_left)
and(!place_meeting(x+1, y, obj_wall))
{
	hspeed += 0.4;
	image_xscale = +1
}

if (key_up)
and(!key_down)
and(!place_meeting(x, y-1, obj_wall))
{
	vspeed -= 0.4;
}
#endregion /*Movement END*/

#region /*Limit Speed*/

#region /*Limit Horizontal Speed*/
if (hspeed<-max_speed)
{
	hspeed=-max_speed
}
if (hspeed>+max_speed)
{
	hspeed=+max_speed
}
#endregion /*Limit Horizontal Speed END*/

#region /*Limit Vertical Speed*/
if (vspeed<-max_speed)
{
	vspeed=-max_speed
}
if (vspeed>+max_speed)
{
	vspeed=+max_speed
}
#endregion /*Limit Vertical Speed END*/

#endregion /*Limit Speed END*/

friction = 0.2;

#region /*Gravity*/
if(!place_meeting(x, y+1, obj_wall))
{
	gravity = 0.1;
}
else
{
	gravity = 0;
}
gravity_direction = 270;
#endregion /*Gravity END*/

image_speed = speed / 10;

#region /*Create bubbles when moving*/
if (fps >= 60)
and(random(10) >= 9)
and(speed > 1)
{
	instance_create_depth(x, y, 0, obj_bubble);
}
#endregion /*Create bubbles when moving END*/

#region/*Don't go outside view*/
if(x<camera_get_view_x(view_camera[view_current]))
{
	x=camera_get_view_x(view_camera[view_current]);
}
if(x>camera_get_view_x(view_camera[view_current])+camera_get_view_width(view_camera[view_current]))
{
	x=camera_get_view_x(view_camera[view_current])+camera_get_view_width(view_camera[view_current]);
}
if(y<camera_get_view_y(view_camera[view_current]))
{
	y=camera_get_view_y(view_camera[view_current]);
}
if(y>camera_get_view_y(view_camera[view_current])+camera_get_view_height(view_camera[view_current]))
{
	y=camera_get_view_y(view_camera[view_current])+camera_get_view_height(view_camera[view_current]);
}
if(x<0)
{
	x=0;
}
if(x>room_width)
{
	x=room_width;
}
if(y<0)
{
	y=0;
}
if(y>room_height)
{
	y=room_height;
}
#endregion/*Don't go outside view END*/