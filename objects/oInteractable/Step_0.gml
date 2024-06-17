isOnArea()

if onArea {
	if tipo == INTERACTABLE_PRESSED {
	
		if !active && input_check_pressed("interact") && oPlayer.xspd == 0 && oPlayer.yspd == 0 {
		
			active = true;
			event_user(0)
		}
	
	} else if tipo == INTERACTABLE_HOVER && oPlayer.onGround {
		
		active = true;
	}
} else {
	active = false;
}
