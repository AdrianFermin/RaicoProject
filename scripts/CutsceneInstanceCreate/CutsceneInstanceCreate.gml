function CutsceneInstanceCreate(_x, _y, _layer, _object) {
	
	var inst = instance_create_layer(_x, _y, _layer, _object)
	array_push(sceneInstances, inst);
	CutsceneEndAction()
}