var _top_corner_x = x - sprite_xoffset;
var _top_corner_y = y - sprite_yoffset

var _hp_display = hp / 100 * 16;

var direc = sign(image_xscale);

draw_line_width_color(_top_corner_x, _top_corner_y - 2, _top_corner_x + direc*16,  _top_corner_y - 2, 2, c_red, c_red);
draw_line_width_color(_top_corner_x, _top_corner_y - 2, _top_corner_x + direc*_hp_display,  _top_corner_y - 2, 2, c_green, c_green);

draw_self()