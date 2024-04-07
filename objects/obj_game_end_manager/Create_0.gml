level = 0

if(instance_exists(obj_game_manager)){
	level = obj_game_manager.level_no;
	instance_destroy(obj_game_manager);
}