xLoc = x + sprite_xoffset + (sprite_width / 2);
yLoc = y + sprite_yoffset - 10;

draw_set_halign(fa_center)

var text_show = "<Space> to lose dred (30 coins)";

if(hovering) {
	draw_text_transformed_color(xLoc, yLoc, text_show, 0.5, 0.5, 0, c_white, c_white, c_white, c_white, 1);
}

draw_set_halign(fa_left)