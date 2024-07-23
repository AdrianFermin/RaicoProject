function TextToView(code, texto = noone, creator = self){

	if !oSystem.onCinematic {
		instance_create_layer(oCamera.x, oCamera.y, "Instances", oTextBox, {
			textCode: code,
			createdBy: creator,
			baseText: texto
		})
	} else {
		instance_create_layer(oCamera.x, oCamera.y, "Instances", oCutsceneTextBox, {
			textCode: code,
			createdBy: creator,
			baseText: texto,
		})
	}
}