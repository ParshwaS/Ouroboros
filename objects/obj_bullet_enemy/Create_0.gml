audio_play_sound(snd_gunshot, 2 , false)
if(isIncendiary) {
	sprite_index = spr_incendiarybullet;
	audio_play_sound(snd_gunshot_crit, 2 , false)
}
if(isCrit) {
	sprite_index = spr_critbullet;
	audio_play_sound(snd_gunshot_crit, 2 , false)
}

image_xscale = 0.7;
image_yscale = 0.7;