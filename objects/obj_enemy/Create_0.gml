/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

burning = 0;

maxLookDistance = clamp(160 + 60*(obj_game_manager.level_no / 20), 160, 300);
enemyDamage = clamp(enemyDamage*(obj_game_manager.level_no / 20), 2, 15);