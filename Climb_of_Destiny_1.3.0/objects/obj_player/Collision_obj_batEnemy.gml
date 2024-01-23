/// @description hitting bat
// You can write your code in this editor
if (y < other.y){
	instance_destroy(other);
	moveY = -jumpSpeed;
}
else {
	
	instance_destroy(other);
	
	if(global.invincible = false)
	{
		global.game_over = true;
	}
}