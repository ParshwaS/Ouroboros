/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

burning = 0;

maxLookDistance = 160;
enemyDamage = clamp(enemyDamage*(obj_game_manager.level_no / 20), 2, 15);