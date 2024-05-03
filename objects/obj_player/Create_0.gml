/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
depth = -10

audio_play_sound(snd_ambient_theme, 1, true)

if(instance_exists(obj_game_manager)) {
	hp = obj_game_manager.playerHp;
}

primaryGun = noone
secondaryGun = noone
maxInteractDistance = 48

with(obj_gun) {
	if(instance_exists(id) && variable_instance_exists(id, "primary")){
		if(primary){
			other.primaryGun = id
		}
	}
}

show_debug_message(primaryGun)