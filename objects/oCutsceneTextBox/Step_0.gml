var aceptar;
var cancelar;

if oSystem.mando == "switch" {
	aceptar = input_check_pressed("acceptSwitch");
	cancelar = input_check_pressed("cancelSwitch");
} else {
	aceptar = input_check_pressed("accept");
	cancelar = input_check_pressed("cancel");
}

if aceptar {
	
	if typ.get_state() < 1 {
		typ.skip();
	} else if typ.get_state() == 1 {
		
		if iterator < array_length(textCode) - 1 {
			
			iterator++;
			
		} else {
			oPlayer.state = BASE_STATE;
			active = false;
			with createdBy {
				CutsceneEndAction()
			}
			exit;
		}
		
		text = GetCSVText(textCode[iterator]);
		sprites = GetCSVSprites(textCode[iterator])
		
		if sprites[0] != "NULL" { text = TextReplacer(text, sprites, "SPRITES") }
		
		scb = scribble(text);
		scb.starting_format("fnRetro", c_white)
		scb.wrap(470 * 2, 60 * 2)
	
		typ = scribble_typist()
		typ.in(1, 0)
		
	}
	
} else if cancelar {
	
	if typ.get_state() < 1 {
		typ.skip();
	}
}


