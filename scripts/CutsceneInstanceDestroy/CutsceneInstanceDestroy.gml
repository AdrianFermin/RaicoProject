function CutsceneInstanceDestroy(ref, instancia = 0) {
	
	var inst;
	
	if instancia == 0 {
		inst = sceneInstances[ref]
	} else {
		inst = instancia;
	}
	
	instance_destroy(inst)
	CutsceneEndAction()
}