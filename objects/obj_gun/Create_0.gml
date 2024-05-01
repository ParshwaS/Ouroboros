/// @description Insert description here
// You can write your code in this editor
bullet_width=sprite_get_width(spr_bullet)/2;

depth = -10

hovering = false;

primary = false;

canFire = true;
reloading = false;
speed_picker = irandom_range(0,2);
firespeed = 15;
damage = 10;
magazineSize = 0;
currentMag = 0;
reloadTime = 120;

firedlastframe = false;


xadd = 0;
yadd = 0;
spawnx = 0;
spawny = 0;

rarity = irandom(3);

spread = 0;

shootIncendiary = false;
shootsThree = false;
bulletSpeed = 5;
shootAngle = irandom_range(5,15);
crit_chance = 5;

switch(speed_picker) {

	case 0: 
		firespeed = irandom_range(8,13);
		damage = irandom_range(5, 15);
		sprite_index = spr_smg;
		spread = irandom_range(6,9);
		xadd = 11;
		yadd = 4;
		magazineSize = 20;
		break;
	case 1:
		firespeed = irandom_range(17, 25)
		damage = irandom_range(15, 30);
		xadd = 6;
		yadd = 3;
		spread = irandom_range(3,6);
		magazineSize = 12;
		break;
	case 2:
		firespeed = irandom_range(40, 50);
		damage = irandom_range(50,70); 
		sprite_index = spr_ar;
		xadd = 17;
		yadd = 3;
		spread = irandom_range(0,4);
		magazineSize = 6;
		break;
}	

availableMods = ds_list_create();

for(i = 0; i < 5; i++) {
	ds_list_add(availableMods, i);
}

for(i = 0; i < rarity; i++) {
	
	modIndex = irandom(ds_list_size(availableMods)) - 1;
	
	modToAdd = ds_list_find_index(availableMods, modIndex);
	
	switch(modToAdd) {
	
		case 1: 
			shootIncendiary = true;
			break;
		case 2: 
			bulletSpeed = 10;
			break;
		case 3: 
			shootsThree = true;
		case 4: 
			crit_chance = 20;
	}
	
	
	
}

currentMag = magazineSize;

str_firespeed = string(firespeed);
str_damage = string(damage);
show_debug_message("firespeed: " + str_firespeed + " damage: " + str_damage);
