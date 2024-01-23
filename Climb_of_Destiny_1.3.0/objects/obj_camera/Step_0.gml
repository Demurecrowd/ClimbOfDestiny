/// @description Insert description here
// You can write your code in this editor
x = obj_player.x;

if (obj_player.y < y)
{
	y = obj_player.y;
}

camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]), y - (view_hport[0] / 2))
	

if(global.game_over){
		global.game_over = false;
		show_debug_message("game over now false");
		room_restart();
		room_goto(DeathScreen);
}

