if(instance_exists(obj_game_manager)) {
	radius = ((100 - obj_game_manager.dred) / 100) * (initialRadius - minRadius) + minRadius;
}


if(instance_exists(obj_player)) {
	
	originX = obj_player.x;
	originY = obj_player.y;

}