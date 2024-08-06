if tipo == INTERACTABLE_PRESSED {
	
	if onArea && !active {
		
		var text = GetCSVText("A017")
		var sprite = GetCSVSprites("A017")
		
		text = TextReplacer(text, sprite, "SPRITES")
		text = string_concat("[fnRetro][fa_center]", text)
		draw_text_scribble(display_get_gui_width()/2, display_get_gui_height() - 60, text)
	}
}