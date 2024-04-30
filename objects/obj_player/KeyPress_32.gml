var bestDistance = maxInteractDistance
var interactingObj = noone

with obj_gun{
	var thisDistance = point_distance(x,y,other.x,other.y);
			
	if thisDistance < bestDistance and !primary {
		bestDistance = thisDistance
		interactingObj = id
	}
}

with obj_chest{
	var thisDistance = point_distance(x,y,other.x,other.y);
			
	if thisDistance < bestDistance {
		bestDistance = thisDistance
		interactingObj = id
	}
}

with obj_enemy{
	var thisDistance = point_distance(x,y,other.x,other.y);
			
	if thisDistance < bestDistance {
		bestDistance = thisDistance
		interactingObj = id
	}
}

if(interactingObj != noone and object_get_name(interactingObj.object_index) == "obj_gun"){
	if(primaryGun == noone) {
		primaryGun = interactingObj
	} else {
		with(primaryGun) {
			primary = false
		}
		primaryGun = interactingObj
	}
	
	with primaryGun{
		if(isShopItem) {
			if(obj_game_manager.coins < price) {
				other.primaryGun = noone;
			} else {
				isShopItem = false;
				obj_game_manager.coins -= price;
				primary = true;
			}
		} else {
			primary = true;
		}
	}
}

if(interactingObj != noone and object_get_name(interactingObj.object_index) == "obj_chest"){
	with (interactingObj) {
		event_user(0);
	}
}