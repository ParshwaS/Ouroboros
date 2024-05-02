if(hovering) {
	if(instance_exists(obj_player)) {
		distance = point_distance(x, y, obj_player.x, obj_player.y);
		if(distance < 50) {	
			if(obj_game_manager.coins >= price) {
				obj_game_manager.coins -= price;
				obj_player.hp = obj_player.max_hp;
			} else {
				with(obj_game_manager) {
					event_user(0);
				}
			}
		}
	}
}