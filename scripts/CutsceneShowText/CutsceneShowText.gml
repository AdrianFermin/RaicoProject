function CutsceneShowText(text) {
	
	if instance_number(oCutsceneTextBox) > 0 {
		exit;
	}
	
	TextToView(text)
}