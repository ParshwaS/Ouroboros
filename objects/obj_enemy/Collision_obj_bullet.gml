hp -= other.damage
audio_play_sound(snd_hit_marker, 1 , false)
if(other.isIncendiary) {

	burning = 60;
}
instance_destroy(other)