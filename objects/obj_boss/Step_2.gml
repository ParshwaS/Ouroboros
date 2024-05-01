// Inherit the parent event
event_inherited();

var step_speed = 3;

if(instance_exists(obj_player)){
	if(distance_to_object(obj_player) <= maxLookDistance){
	
		var _path = path_add();
		
		mp_potential_path(_path, obj_player.x, obj_player.y, step_speed, 4, false);
		
		path_start(_path, step_speed, path_action_stop, false);
	
	}
}