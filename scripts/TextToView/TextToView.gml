function TextToView(texto, engText, creator = self){

	if !oSystem.onCinematic {
		instance_create_layer(oCamera.x, oCamera.y, "Instances", oTextBox, {
			text: texto,
			createdBy: creator,
			textENG: engText
		})
	} else {
		instance_create_layer(oCamera.x, oCamera.y, "Instances", oCutsceneTextBox, {
			text: texto,
			createdBy: creator,
			textENG: engText
		})
	}
}