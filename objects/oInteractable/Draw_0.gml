draw_self()

if collision_circle(x + 16, y + 16, 70, oPlayer, false, true) {
	
	onArea = true;
	
	if alfa < 1 {
		alfa += .2;
	}
	
	
} else {
	onArea = false;
	
	if alfa > 0 {
		alfa -= .2;
	}
}

if counter > 7.5 {
		
	if sub != 3 {
		sub++;
		counter = 0;
	} else {
		sub = 0;
		counter = 0;
	}
} else {
	counter += .75;
}


if oSystem.mando == "teclado" {
	draw_sprite_ext(oSystem.interactBtn, sub, x - 8, y - 24, 1, 1, 0, c_white, alfa)
} else {
	draw_sprite_ext(oSystem.interactBtn, sub, x + 14, y - 24, 1.5, 1.5, 0, c_white, alfa)
}

if onArea && input_check_pressed("interact") && oPlayer.xspd == 0 && oPlayer.yspd == 0{
	
	if !active {
		active = true;
		event_user(0)
	}
}
