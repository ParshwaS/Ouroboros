/// @description Insert description here
// You can write your code in this editor

with(instance_create_layer(x, y, "Instances", obj_bullet_enemy)) {
	direction = point_direction(x, y, obj_player.x, obj_player.y)
	speed = 3
}

alarm[0] = game_get_speed(gamespeed_fps) / (obj_game_manager.level_no div 10)