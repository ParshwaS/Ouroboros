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
		primary = true
	}
}

if(interactingObj != noone and object_get_name(interactingObj.object_index) == "obj_chest"){
	with (interactingObj) {
		event_user(0);
	}
}