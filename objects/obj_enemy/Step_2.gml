// Inherit the parent event
event_inherited();


if(burning > 0) {
	alarm[0] = 1;
}

var step_speed = clamp(enemySpeed * (obj_game_manager.level_no / 25), 2, 10);
if(instance_exists(obj_player)){
	if(distance_to_object(obj_player) <= maxLookDistance){
	
		var _path = path_add();
		
		mp_potential_path(_path, obj_player.x, obj_player.y, step_speed, 4, false);
		
		path_start(_path, step_speed, path_action_stop, false);
	
	}
}