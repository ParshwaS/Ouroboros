/// @description Insert description here
// You can write your code in this editor

var randomSpread = spread/2 - irandom_range(0, spread);  
var randomSpread2 = spread/2 - irandom_range(0, spread); 
var randomSpread3 = spread/2 - irandom_range(0, spread); 

instance_create_layer(spawnx,spawny, "Instances",obj_bullet, 
{
	speed: bulletSpeed,
	direction: randomSpread + point_direction(x,y,mouse_x,mouse_y),
	isIncendiary: shootIncendiary,
});

if(shootsThree) {
	instance_create_layer(spawnx,spawny, "Instances",obj_bullet, 
		{
			speed: bulletSpeed,
			direction: randomSpread2 + point_direction(x,y,mouse_x,mouse_y) - shootAngle,
			isIncendiary: shootIncendiary,
	});
	instance_create_layer(spawnx,spawny, "Instances",obj_bullet, 
		{
			speed: bulletSpeed,
			direction: randomSpread3 + point_direction(x,y,mouse_x,mouse_y) + shootAngle,
			isIncendiary: shootIncendiary,
	});
}

currentMag--;

canFire = true;