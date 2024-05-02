if(hovering && !primary) {
	if(instance_exists(obj_player)) {
		var check = false
		distance = point_distance(x, y, obj_player.x, obj_player.y);
		if(instance_exists(obj_light_controller)) {
			check = distance < obj_light_controller.radius;
		}
		check = isShopItem || check;
		if(check) {
			if(isShopItem) {
				if(obj_game_manager.coins >= price) {
					audio_play_sound(snd_gun_pickup, 1, false)
					if(obj_player.primaryGun != noone) {
						with (obj_player.primaryGun) {
							primary = false;
						}
					}
					obj_game_manager.coins -= price;
					isShopItem = false;
					obj_player.primaryGun = id;
					primary = true;
				} else {
					with(obj_game_manager) {
						event_user(0);
					}
				}
			} else {
				if(obj_player.primaryGun != noone) {
					with (obj_player.primaryGun) {
						primary = false;
					}
				}
				obj_player.primaryGun = id;
				primary = true;
			}
		}
		audio_play_sound(snd_gun_pickup, 1, false)
	}
}