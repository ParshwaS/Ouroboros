playerLoc = shader_get_uniform(sh_lighting, "origin")
shaderRadius = shader_get_uniform(sh_lighting, "radius")
originX = 0
originY = 0
lighting = surface_create(room_width,room_height);
depth = -12
initialRadius = 600;
minRadius = 100;
radius = initialRadius;

if(instance_exists(obj_player)) {
	
	originX = obj_player.x;
	originY = obj_player.y;

}