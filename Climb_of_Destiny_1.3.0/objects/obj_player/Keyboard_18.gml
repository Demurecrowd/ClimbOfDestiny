/// @description Cheats Menu
// You can write your code in this editor

if(keyboard_check_pressed(ord("I"))){
	//invinvibility
	global.invincible = true;
	alarm[1] = 1;
}

if(keyboard_check_pressed(ord("N"))){
	room_goto_next();	
}






