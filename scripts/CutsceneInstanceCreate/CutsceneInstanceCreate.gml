function CutsceneInstanceCreate(_x, _y, _layer, _object, struct = 0) {
	
	var inst;
	
	if struct != 0 {
		inst = instance_create_layer(_x, _y, _layer, _object, struct)
	} else {
		inst = instance_create_layer(_x, _y, _layer, _object)
	}
	
	array_push(sceneInstances, inst);
	instance_activate_object(inst);
	CutsceneEndAction();
	
}