if impact = true {
	
	shader_set(Shader1)
	impact_timer -=1
	
	if impact_timer < 0
	{
		impact = false
		impact_timer = 6
	}
}
draw_surface_stretched(application_surface, 0, 0, window_get_width(), window_get_height());
shader_reset()