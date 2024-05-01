if(room == rm_main) {
surface_set_target(lighting)

draw_clear_alpha(c_black, 1);

surface_reset_target()

shader_set(sh_lighting)
shader_set_uniform_f(playerLoc, originX, originY)
shader_set_uniform_f(shaderRadius, radius)
draw_surface(lighting, 0, 0)
shader_reset()
}