var _level = obj_game_manager.level_no;
audio_play_sound(snd_ladder, 1 ,false)
if(room == rm_main) {
		
	if(_level % 2 == 0) {
		room_goto(rm_shop);
		audio_play_sound(snd_shop_theme, 2 , false)
		audio_pause_sound(snd_ambient_theme)
	} else {
		room_goto(rm_main);
	}
} else if(room == rm_shop) {
	
	
	if (_level % 10 == 0) {
		room_goto(rm_boss);
		audio_play_sound(snd_boss_theme, 1, false)
		audio_pause_sound(snd_shop_theme)
		audio_pause_sound(snd_ambient_theme)
	} else {
		room_goto(rm_main);
		audio_pause_sound(snd_shop_theme)
	}
} else if(room == rm_boss) {
	room_goto(rm_main);
	audio_pause_sound(snd_boss_theme)
}