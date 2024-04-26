/// @description Insert description here
// You can write your code in this editor

if(primary && object_exists(obj_player)) {

	x = obj_player.x;
	y = obj_player.y;
	
	if(flipped) {
		x -= 7;
		spawnx += lengthdir_x(-xadd, image_angle);
		spawny += lengthdir_y(-xadd, image_angle);
		spawnx += lengthdir_x(-yadd+bullet_width/2, image_alpha-90);
		spawny += lengthdir_y(-yadd+bullet_width/2, image_alpha-90);
	} else {
		x += 7;
		spawnx += lengthdir_x(xadd, image_angle);
		spawny += lengthdir_y(xadd, image_angle);
		spawnx += lengthdir_x(yadd-bullet_width, image_alpha+90);
		spawny += lengthdir_y(yadd-bullet_width, image_alpha+90)
	}
	spawnx += x;
	spawny += y;

}



if(!reloading && mouse_check_button(mb_left) && canFire && primary) {
	canFire = false;
	alarm[0] = firespeed;
}

str_currentMag = string(currentMag);

if(primary && !persistent){
	persistent = true;
}
//if(secondary && !persistent){
//	persistent = true;
//}
if(!primary){
	persistent = false;
}