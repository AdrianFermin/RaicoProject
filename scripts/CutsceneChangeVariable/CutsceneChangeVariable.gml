function CutsceneChangeVariable(inst, varNameString, value) {
	
	with inst {
		variable_instance_set(id, varNameString, value)
	}
	
	CutsceneEndAction()
}