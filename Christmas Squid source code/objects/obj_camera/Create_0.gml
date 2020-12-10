#region /*Initialize View*/
camera_set_view_target(view_camera[view_current],self);

#region /*View Border*/
camera_set_view_border(view_camera[view_current], camera_get_view_width(view_camera[view_current]), camera_get_view_height(view_camera[view_current]));
#endregion /*View Border End*/

#endregion /*Initialize View End*/