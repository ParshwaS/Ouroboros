/// @description Insert description here
// You can write your code in this editor
bullet_width=sprite_get_width(spr_bullet)/2;

level = obj_game_manager.level_no;

rarity = irandom_range(1,100);

common = clamp(70 - floor(level), 20, 70);
uncommon = clamp(90 - floor(level/2.5), 40, 90);
numMods = 0;

if(rarity <= common) {
	numMods = 0;
	price = 20;
} else if(rarity <= uncommon) {
	numMods = irandom_range(1,2);
	price = 30;
} else {
	numMods = 3;
	price = 45;
}



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


spread = 0;

shootIncendiary = false;
shootsThree = false;
bulletSpeed = 5;
shootAngle = irandom_range(5,15);
crit_chance = 5;

switch(speed_picker) {

	case 0: 
		firespeed = irandom_range(8,13);
		
		if(rarity <= common) {
			damage = irandom_range(5, 10);
		} else if(rarity <= uncommon) {
			damage = irandom_range(7, 13);
		} else {
			damage = irandom_range(10, 15);
		}
		sprite_index = spr_smg;
		spread = irandom_range(6,9);
		xadd = 11;
		yadd = 4;
		magazineSize = 20;
		damage = damage + floor(level/4)
		break;
	case 1:
		firespeed = irandom_range(17, 25);
		if(rarity <= common) {
			damage = irandom_range(15, 25);
		} else if(rarity <= uncommon) {
			damage = irandom_range(18, 27);
		} else {
			damage = irandom_range(20, 30);
		}
		xadd = 6;
		yadd = 3;
		spread = irandom_range(3,6);
		magazineSize = 12;
		damage = damage + (2 * floor(level/4))
		break;
	case 2:
		firespeed = irandom_range(40, 50);
		damage = irandom_range(50,70); 
		if(rarity <= common) {
			damage = irandom_range(50, 62);
		} else if(rarity <= uncommon) {
			damage = irandom_range(55, 65);
		} else {
			damage = irandom_range(60, 70);
		}
		sprite_index = spr_ar;
		xadd = 17;
		yadd = 3;
		spread = irandom_range(0,4);
		magazineSize = 6;
		damage = damage + (3 * floor(level/4))
		break;
}	

appliedMods = ds_list_create();

while(numMods > 0) {
	
	
	
	modToAdd = irandom_range(1, 4);

	if(ds_list_find_index(appliedMods, modToAdd) == -1 ) {
		
		switch(modToAdd) {
	
			case 1: 
				shootIncendiary = true;
				break;
			case 2: 
				bulletSpeed = 10;
				break;
			case 3: 
				shootsThree = true;
				damage = round(damage/2)
				break;
			case 4: 
				crit_chance = 20;
				break;
		}
		
		ds_list_add(appliedMods, modToAdd);
		numMods--;
	}
	
	
	
}

show_debug_message(string(common) + " " + string(uncommon) +" "+ string(rarity))

currentMag = magazineSize;

