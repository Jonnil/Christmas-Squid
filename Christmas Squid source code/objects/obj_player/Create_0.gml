#region /*Initialize the controls*/
key_down = noone;
key_left = noone;
key_right = noone;
key_up = noone;
#endregion /*Initialize the controls END*/

max_speed = 4;
hat_sprite = noone;
eye_sprite = spr_player_eyes_default;

instance_create_depth(x, y, -100, obj_player_eyes);