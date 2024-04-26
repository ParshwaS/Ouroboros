//show_debug_message(level_no)
if(instance_exists(obj_player)){
	draw_text_transformed_color(x+5, y+5, "Vengence: "+string(vengence)+" %", 1, 1, 0, c_white, c_white, c_white, c_white, 1)
	draw_text_transformed_color(x+5, y+20, "Dred: "+string(dred)+" %", 1, 1, 0, c_white, c_white, c_white, c_white, 1)
	draw_text_transformed_color(x+5, y+35, "Coins: "+string(coins), 1, 1, 0, c_white, c_white, c_white, c_white, 1)
	if(room == rm_shop) draw_text_transformed_color(x+(view_wport[0] div 4), y+10, "SHOP ROOM", 1, 1, 0, c_white, c_white, c_white, c_white, 1)
	if(room == rm_boss) draw_text_transformed_color(x+(view_wport[0] div 4), y+10, "BOSS ROOM", 1, 1, 0, c_white, c_white, c_white, c_white, 1)
	if(room == rm_main) draw_text_transformed_color(x+(view_wport[0] div 4), y+10, "Level: "+string(level_no), 1, 1, 0, c_white, c_white, c_white, c_white, 1)
} else {
	var c = "S";
	if(room == rm_shop) c = "N";
	draw_text_transformed_color(x+5, y+5, "Alt + "+c+" to continue", 1, 1, 0, c_white, c_white, c_white, c_white, 1)
}