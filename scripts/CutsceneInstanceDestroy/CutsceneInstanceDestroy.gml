function CutsceneInstanceDestroy(ref, _instancia = 0) {
	
	var inst;
	
	if _instancia == 0 {
		inst = sceneInstances[ref]
	} else {
		inst = _instancia;
	}
	
	instance_destroy(inst)
	CutsceneEndAction()
}

function CutsceneInstanceDestroyOther(ref, _obj, habitacion, _structName, levelName, counterName) {
	
	RemoveSavedInstance(levelName, _structName, counterName, ref)
	CutsceneEndAction()
	
}