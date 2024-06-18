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

function CutsceneInstanceDestroyOther(levelName, _structName, counterName, ref) {
	
	RemoveSavedInstance(levelName, _structName, counterName, ref)
	CutsceneEndAction()
	
}

function CutsceneInstanceDestroyAll() {
	
	var size = array_length(sceneInstances);
	
	for(var i = 0; i < size; i++) {
		instance_destroy(sceneInstances[i]);
	}
	
	CutsceneEndAction()
}