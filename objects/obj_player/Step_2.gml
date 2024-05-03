/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(vel_x != 0 || vel_y != 0) {
	sprite_index =  spr_playerWalk;
} else {
	sprite_index = spr_playerStand;
}