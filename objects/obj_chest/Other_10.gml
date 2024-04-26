if(!isOpen) {
	isOpen = true
	image_index = 1

	if(instance_exists(obj_player) and instance_exists(obj_game_manager)) {
		obj_game_manager.coins += irandom_range(3, 15);
	}
}