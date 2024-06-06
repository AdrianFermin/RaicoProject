function TextToView(texto, creator = self){

	if !oSystem.onCinematic {
		instance_create_layer(oCamera.x, oCamera.y, "Instances", oTextBox, {
			text: texto,
			createdBy: creator
		})
	} else {
		instance_create_layer(oCamera.x, oCamera.y, "Instances", oCutsceneTextBox, {
			text: texto,
			createdBy: creator
		})
	}
}