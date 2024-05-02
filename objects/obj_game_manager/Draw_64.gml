/// @description Insert description here
// You can write your code in this editor
//show_debug_message(level_no)
if(instance_exists(obj_player)){
	draw_set_font(font_main)
	draw_text_transformed_color(5, 20, "Dred: "+string(dred)+" %", 1, 1, 0, c_white, c_white, c_white, c_white, 1)
	draw_text_transformed_color(5, 35, "Coins: "+string(coins), 1, 1, 0, c_white, c_white, c_white, c_white, 1)
	draw_set_halign(fa_center);
	if(room == rm_shop) draw_text_transformed_color((view_wport[0] div 2), 10, "SHOP ROOM", 1, 1, 0, c_white, c_white, c_white, c_white, 1)
	if(room == rm_boss) draw_text_transformed_color((view_wport[0] div 2), 10, "BOSS ROOM", 1, 1, 0, c_white, c_white, c_white, c_white, 1)
	if(room == rm_main) draw_text_transformed_color((view_wport[0] div 2), 10, "Level: "+string(level_no), 1, 1, 0, c_white, c_white, c_white, c_white, 1)
	draw_set_halign(fa_left);
} else {
	var c = "S";
	if(room == rm_shop) c = "N";
	draw_text_transformed_color(5, 5, "Alt + "+c+" to continue", 1, 1, 0, c_white, c_white, c_white, c_white, 1)
}

if(draw_no_money) {
	draw_set_halign(fa_center);
	//draw_rectangle_color((view_wport[0] div 2) - 100, 40, (view_wport[0] div 2) + 100, 80, c_black, c_black, c_black, c_black, false);
	draw_text_transformed_color((view_wport[0] div 2), 50, "Not Enough Money", 1.5, 1.5, 0, c_white, c_white, c_white, c_white, 1)
	draw_set_halign(fa_left);
}