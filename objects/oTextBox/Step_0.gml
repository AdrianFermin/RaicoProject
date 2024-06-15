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
		
		if scb.on_last_page() {
			oPlayer.jumpLock = 5;
			oPlayer.state = BASE_STATE;
			active = false;
		} else {
			scb.page(scb.get_page() + 1)
		}
		
	}
} else if cancelar {
	
	if typ.get_state() < 1 {
		typ.skip();
	}
}


