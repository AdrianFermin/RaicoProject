function CutsceneShowText(text, textENG) {
	
	if instance_number(oCutsceneTextBox) > 0 {
		exit;
	}
	
	TextToView(text, textENG);
}