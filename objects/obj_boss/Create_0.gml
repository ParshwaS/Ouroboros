// Inherit the parent event
event_inherited();

maxLookDistance = 5050;

if(instance_exists(obj_next_room)) {
	instance_deactivate_object(obj_next_room);
}