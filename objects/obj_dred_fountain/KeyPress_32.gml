if(hovering) {
	if(instance_exists(obj_player)) {
		distance = point_distance(x, y, obj_player.x, obj_player.y);
		if(distance < 50) {	
			if(obj_game_manager.coins >= price) {
				obj_game_manager.coins -= price;
				obj_game_manager.dred = 0;
			}
		}
	}
}