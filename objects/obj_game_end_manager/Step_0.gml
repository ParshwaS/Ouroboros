if(room == rm_end and keyboard_check(vk_alt)){
	if(keyboard_check_pressed(ord("S"))){
		instance_destroy(obj_game_manager);
		room_goto(rm_start);
	}
}