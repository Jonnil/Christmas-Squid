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
{
	vspeed += 0.4;
}

if (key_left)
and(!key_right)
{
	hspeed -= 0.4;
}

if (key_right)
and(!key_left)
{
	hspeed += 0.4;
}

if (key_up)
and(!key_down)
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