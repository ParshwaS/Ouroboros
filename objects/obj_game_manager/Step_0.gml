cam = view_camera[0]
var camx = camera_get_view_x(cam);
var camy = camera_get_view_y(cam);

x = camx
y = camy

if(instance_exists(obj_player)){
	playerHp = obj_player.hp;
}

if(room == rm_start and keyboard_check(vk_alt)){
	if(keyboard_check_pressed(ord("S"))){
		room_goto_next();
	}
}

if(room == rm_shop and keyboard_check(vk_alt)){
	if(keyboard_check_pressed(ord("N"))){
		room_goto(rm_main);
	}
}