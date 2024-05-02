// Inherit the parent event
event_inherited();


if(burning > 0) {
	alarm[0] = 1;
}

var step_speed = clamp(enemySpeed * (obj_game_manager.level_no / 30), 1, 7);

if(instance_exists(obj_player)){
	if(distance_to_object(obj_player) <= maxLookDistance){
	
		var _path = path_add();
		
		mp_potential_path(_path, obj_player.x, obj_player.y, 4, 4, false);
		
		path_start(_path, step_speed, path_action_stop, false);
	}
}