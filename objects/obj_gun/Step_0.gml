/// @description Insert description here
// You can write your code in this editor
flipped = false;
spawnx = 0;
spawny = 0;


if(primary) {
	if(object_exists(obj_player)) {

		x = obj_player.x;
		y = obj_player.y;

	}



	image_angle = point_direction(x, y, mouse_x, mouse_y);




	if((image_angle > 90 && image_angle < 270)) {
		flipped = true;
	} else {
		flipped = false;
	}
	if(flipped) {
		image_angle -= 180;
		image_xscale = -1;

	} else {
		image_xscale = 1;
	}


} else {
	
	if(hovering) {
	
		
		image_xscale = 1.2;
		image_yscale = 1.2;
	
		if(keyboard_check(ord("F"))){
			if(instance_exists(obj_player)) {
				with(obj_gun) {
					isEquipped = false;
					image_angle = 0;
				}
				isEquipped = true;
				hovering = false;
				image_xscale = 1;
				image_yscale = 1;
			}
			
		}
	
	} else {
		image_xscale = 1;
		image_yscale = 1;
	}


}