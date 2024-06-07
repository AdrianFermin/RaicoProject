function CreateCutscene(scene_info) {
	
	var inst = instance_create_layer(0, 0, "Instances", oCutscene);
	
	inst.scene_info = scene_info;
	
}