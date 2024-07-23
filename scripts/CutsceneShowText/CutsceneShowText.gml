function CutsceneShowText(textCode) {
	
	if instance_number(oCutsceneTextBox) > 0 {
		exit;
	}
	
	TextToView(textCode);
	
}