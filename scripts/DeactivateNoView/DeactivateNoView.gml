function DeactivateNoView(){
	
	instance_deactivate_all(true)
	
	instance_activate_region(camera_get_view_x(view_camera[0]) - 400, camera_get_view_y(view_camera[0]) - 200,
	camera_get_view_width(view_camera[0]) + 600,
	camera_get_view_height(view_camera[0]) + 400, true)

	instance_activate_object(input_controller_object)
	instance_activate_object(oCamera)
	instance_activate_object(oTextBox)
	instance_activate_object(oCutsceneTextBox)
	instance_activate_object(oPlayer)
	instance_activate_object(oTransition)
	instance_activate_object(oCutscene)
	instance_activate_object(oSaveLoad)
	
	if onCinematic {
		
		if instance_exists(oCutscene) {
			
			var list = oCutscene.sceneInstances;
			var size = array_length(list);
			
			for (var i = 0; i < size; i++) {
				
				var inst = list[i]
				
				instance_activate_region(inst.x - 100, inst.y - 100, 300, 300, true);
				
			}
			
		}
	}
}