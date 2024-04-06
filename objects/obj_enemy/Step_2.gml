// Inherit the parent event
event_inherited();

if(instance_exists(obj_player)){
	if(distance_to_object(obj_player) <= 160){
	
		var _path = path_add();
		
		mp_potential_path(_path, obj_player.x, obj_player.y, 3, 4, false);
		
		path_start(_path, 3, path_action_stop, false);
	
	}
}