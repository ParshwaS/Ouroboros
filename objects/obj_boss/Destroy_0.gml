if(!instance_exists(obj_enemy_follower)) {
	instance_activate_object(obj_next_room);
}
audio_play_sound(snd_boss_death, 1 , false)