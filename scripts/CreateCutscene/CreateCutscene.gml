function CreateCutscene(t_scene_info) {
	
	instance_create_layer(0, 0, "Instances", oCutscene, {
		scene_info: t_scene_info
	});
	
}