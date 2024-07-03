function DeactivateNoView(){
	
	instance_deactivate_all(true)
	
	instance_activate_region(camera_get_view_x(view_camera[0]) - 400, camera_get_view_y(view_camera[0]) - 200,
	camera_get_view_width(view_camera[0]) + 600,
	camera_get_view_height(view_camera[0]) + 400, true)
	
	ActivateNoView()
}