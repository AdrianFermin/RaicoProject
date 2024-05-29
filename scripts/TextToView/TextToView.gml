function TextToView(texto, creator){

	instance_create_layer(oCamera.x, oCamera.y, "Instances", oTextBox, {
		text: texto,
		createdBy: creator
	})
}