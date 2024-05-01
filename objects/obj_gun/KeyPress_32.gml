if(hovering && !primary) {
	if(instance_exists(obj_player)) {
		distance = point_distance(x, y, obj_player.x, obj_player.y);
		if(distance < 50) {
			if(obj_player.primaryGun != noone) {
				with (obj_player.primaryGun) {
					primary = false;
				}
			}
			if(isShopItem) {
				if(obj_game_manager.coins >= price) {
					obj_game_manager.coins -= price;
					isShopItem = false;
					obj_player.primaryGun = id;
					primary = true;
				}
			} else {
				obj_player.primaryGun = id;
				primary = true;
			}
		}
	}
}