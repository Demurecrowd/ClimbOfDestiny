/// @description Insert description here
// You can write your code in this editor
event_inherited();

if (instance_exists(obj_credits))
{
	instance_destroy(obj_credits);
}
else if (instance_exists(obj_controls))
{
	instance_destroy(obj_controls);
	instance_create_layer(room_width / 2, room_height - 130, "instances", obj_credits);
}

else
{
	instance_create_layer(room_width / 2, room_height - 130, "instances", obj_credits);
}
