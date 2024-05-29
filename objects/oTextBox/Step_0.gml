if input_check_pressed("accept") {
	
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
} else if input_check_pressed("cancel") {
	
	if typ.get_state() < 1 {
		typ.skip();
	}
}


