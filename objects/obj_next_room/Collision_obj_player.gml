var _level = obj_game_manager.level_no;

if(room == rm_main) {
	if(_level % 2 == 0) {
		room_goto(rm_shop);
	} else {
		room_goto(rm_main);
	}
} else if(room == rm_shop) {
	if (_level % 10 == 0) {
		room_goto(rm_boss);
	} else {
		room_goto(rm_main);
	}
} else if(room == rm_boss) {
	room_goto(rm_main);
}