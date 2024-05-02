/// @description spacebar healthbuff
// You can write your code in this editor
if(hovering) {
	if(instance_exists(obj_player)) {
		distance = point_distance(x, y, obj_player.x, obj_player.y);
		if(distance < 50) {
			if(obj_game_manager.coins >= price) {
				audio_play_sound(snd_healing, 1, false)
				obj_game_manager.coins -= price;
				obj_player.hp +=25
			} else {
				with(obj_game_manager) {
					event_user(0);
				}
			}
		}
	}
}