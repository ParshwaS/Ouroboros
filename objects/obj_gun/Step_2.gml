/// @description Insert description here
// You can write your code in this editor

if(primary) {
	hovering = false;
	if(object_exists(obj_player)) {

		x = obj_player.x;
		y = obj_player.y;

	}



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
	
	
	if(!reloading && mouse_check_button(mb_left) && canFire) {
		
		canFire = false;
		
		var randomSpread = spread/2 - irandom_range(0, spread);  
		var randomSpread2 = spread/2 - irandom_range(0, spread); 
		var randomSpread3 = spread/2 - irandom_range(0, spread); 

		var crit = random(100)
		var isCrit = false
		if(crit < crit_chance) {
				isCrit =true
		}

		instance_create_layer(spawnx,spawny, "Instances",obj_bullet, 
		{
			speed: bulletSpeed,
			direction: randomSpread + point_direction(x,y,mouse_x,mouse_y),
			isIncendiary: shootIncendiary,
			damage: damage,
			isCrit: isCrit
	

		});


		if(shootsThree) {
			isCrit = false;
			crit = random(100)
			if(crit < crit_chance) {
				isCrit =true
			}
			instance_create_layer(spawnx,spawny, "Instances",obj_bullet, 
				{
					speed: bulletSpeed,
					direction: randomSpread2 + point_direction(x,y,mouse_x,mouse_y) - shootAngle,
					isIncendiary: shootIncendiary,
					damage: damage,
					isCrit: isCrit
	

			});
			crit = random(100)
			isCrit = false
			if(crit < crit_chance) {
				isCrit =true
			}
			instance_create_layer(spawnx,spawny, "Instances",obj_bullet, 
				{
					speed: bulletSpeed,
					direction: randomSpread3 + point_direction(x,y,mouse_x,mouse_y) + shootAngle,
					isIncendiary: shootIncendiary,
					damage: damage,
					isCrit: isCrit
	

			});
		}
		alarm[0] = firespeed;
		show_debug_message("run");
		
	}

	
	

	str_currentMag = string(currentMag);
	
	if(!persistent){
		persistent = true;
	}

}

if(!primary){
	persistent = false;
}