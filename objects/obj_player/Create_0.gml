/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(instance_exists(obj_game_manager)) {
	hp = obj_game_manager.playerHp;
}

primaryGun = noone
secondaryGun = noone
maxInteractDistance = 10

with(obj_gun) {
	if(primary) {
		other.primaryGun = id
	}
}

show_debug_message(primaryGun)