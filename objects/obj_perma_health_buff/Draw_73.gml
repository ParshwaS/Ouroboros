/// @description Insert description here
// You can write your code in this editor

xLoc = x + sprite_xoffset + (sprite_width / 2);
yLoc = y + sprite_yoffset - 10;

draw_set_halign(fa_center)

var text_show = "<Space> for perma health buff ("+string(price)+" coins)";

if(hovering) {
	draw_text_transformed_color(xLoc, yLoc, text_show, 0.5, 0.5, 0, c_white, c_white, c_white, c_white, 1);
}

draw_set_halign(fa_left)