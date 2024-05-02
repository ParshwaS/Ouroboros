// Inherit the parent event
event_inherited();


if(burning > 0) {
	alarm[0] = 30;
}

var step_speed = clamp(enemySpeed * (obj_game_manager.level_no / 25), 2, 10);

if(instance_exists(obj_player)){
	if(distance_to_object(obj_player) <= maxLookDistance){
	
		var _path = path_add();
		
		mp_potential_path(_path, obj_player.x, obj_player.y, 4, 4, false);
		
	    var _to_x = path_get_point_x(_path, 5);
	    var _to_y = path_get_point_y(_path, 5);
		
		var _dir_x = _to_x - x;
		var _dir_y = _to_y - y;
		
		show_debug_message(_to_x);
		show_debug_message(_to_y);
		show_debug_message(x);
		show_debug_message(y);	
		
		vel_x = sign(_dir_x) * step_speed;
		vel_y = sign(_dir_y) * step_speed;
	
	}
}