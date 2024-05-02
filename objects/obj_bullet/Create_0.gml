audio_play_sound(snd_gunshot, 2 , false)
if(isIncendiary) {
	sprite_index = spr_incendiarybullet;
	audio_play_sound(snd_incendiary, 1 , false)
}
if(isCrit) {
	sprite_index = spr_critbullet;
	audio_play_sound(snd_gunshot_crit, 1, false)
}