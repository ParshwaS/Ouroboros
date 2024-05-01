if(instance_exists(obj_game_manager) && room == rm_main) {
	obj_game_manager.dred = clamp(obj_game_manager.dred + 1, 0, 100);
}