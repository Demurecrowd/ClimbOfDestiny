/// @description Insert description here
// You can write your code in this edito
if (moveY < 0) {
	sprite_index = spr_player_jump;
}
else if (inputX != 0) {
	image_xscale = sign(inputX);
	sprite_index = spr_player_move;
}
else {
	sprite_index = spr_player_test;
}

//view controls
//get y value of viewport
//get players highest y value
//camera_y = camera_get_view_y(view_camera[0]);
//new_camera_y = (camera_get_view_y(view_camera[0]) + (moveY / 4));

//if(y <= (camera_get_view_y(view_camera[0]) + (camera_get_view_y(view_camera[0]) / 2))) && (sign(moveY) = -1){
//	camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]), min(camera_y, new_camera_y));
	
//}

//if(y < (camera_get_view_y(view_camera[0]) - 20)) && (sign(moveY) = 1){
//	//kill player
	
//}





