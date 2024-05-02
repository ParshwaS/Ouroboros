audio_play_sound(snd_gunshot, 2 , false)
if(isIncendiary) {
	audio_play_sound(snd_incendiary, 1 , false)
	sprite_index = spr_incendiarybullet;
	
}
if(isCrit) {
	sprite_index = spr_critbullet;
	audio_play_sound(snd_gunshot_crit, 1, false)
}